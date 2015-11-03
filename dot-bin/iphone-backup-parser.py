#!/usr/bin/env python3
import hashlib
import json
import os
import sys


mbdx = {}


def getint(data, offset, intsize):
    """Retrieve an integer (big-endian) and new offset from the current offset"""
    value = 0
    while intsize > 0:
        value = (value << 8) + data[offset]
        offset = offset + 1
        intsize = intsize - 1
    return value, offset


def getstring(data, offset):
    """Retrieve a string and new offset from the current offset into the data"""
    if chr(data[offset]) == chr(0xFF) and chr(data[offset + 1]) == chr(0xFF):
        return '', offset + 2  # Blank string
    length, offset = getint(data, offset, 2)  # 2-byte length
    value = data[offset:offset + length]
    return value.decode(encoding='latin-1'), (offset + length)


def process_mbdb_file(filename):
    mbdb = {}  # Map offset of info in this file => file info
    data = open(filename, 'rb').read()  # 'b' is needed to read all content at once
    if data[0:4].decode() != 'mbdb': raise Exception('This does not look like an MBDB file')
    offset = 4
    offset = offset + 2  # value x05 x00, not sure what this is
    while offset < len(data):
        fileinfo = {}
        fileinfo['start_offset'] = offset
        fileinfo['domain'], offset = getstring(data, offset)
        fileinfo['filename'], offset = getstring(data, offset)
        fileinfo['linktarget'], offset = getstring(data, offset)
        fileinfo['datahash'], offset = getstring(data, offset)
        fileinfo['unknown1'], offset = getstring(data, offset)
        fileinfo['mode'], offset = getint(data, offset, 2)
        fileinfo['unknown2'], offset = getint(data, offset, 4)
        fileinfo['unknown3'], offset = getint(data, offset, 4)
        fileinfo['userid'], offset = getint(data, offset, 4)
        fileinfo['groupid'], offset = getint(data, offset, 4)
        fileinfo['mtime'], offset = getint(data, offset, 4)
        fileinfo['atime'], offset = getint(data, offset, 4)
        fileinfo['ctime'], offset = getint(data, offset, 4)
        fileinfo['filelen'], offset = getint(data, offset, 8)
        fileinfo['flag'], offset = getint(data, offset, 1)
        fileinfo['numprops'], offset = getint(data, offset, 1)
        fileinfo['properties'] = {}
        for ii in range(fileinfo['numprops']):
            propname, offset = getstring(data, offset)
            propval, offset = getstring(data, offset)
            fileinfo['properties'][propname] = propval
        mbdb[fileinfo['start_offset']] = fileinfo
        fullpath = fileinfo['domain'] + '-' + fileinfo['filename']
        id = hashlib.sha1(fullpath.encode())
        mbdx[fileinfo['start_offset']] = id.hexdigest()
    return mbdb


def modestr(val):
    def mode(val):
        if (val & 0x4):
            r = 'r'
        else:
            r = '-'
        if (val & 0x2):
            w = 'w'
        else:
            w = '-'
        if (val & 0x1):
            x = 'x'
        else:
            x = '-'
        return r + w + x
    return mode(val >> 6) + mode((val >> 3)) + mode(val)


def fileinfo_str(f, verbose=False):
    if not verbose: return '{} {} {}'.format(f['fileID'], f['domain'], f['filename'])
    if (f['mode'] & 0xE000) == 0xA000:
        type = 'l'  # symlink
    elif (f['mode'] & 0xE000) == 0x8000:
        type = '-'  # file
    elif (f['mode'] & 0xE000) == 0x4000:
        type = 'd'  # dir
    else:
        print >> sys.stderr, 'Unknown file type %04x for %s' % (f['mode'], fileinfo_str(f, False))
        type = '?'  # unknown
    info = ('%s%s %08x %08x %7d %10d %10d %10d %s %s %s' %
            (type, modestr(f['mode'] & 0x0FFF), f['userid'], f['groupid'], f['filelen'],
             f['mtime'], f['atime'], f['ctime'], f['fileID'], f['domain'], f['filename']))
    if type == 'l': info = info + ' -> ' + f['linktarget']  # symlink destination
    for name, value in f['properties'].items():  # extra properties
        info = info + ' ' + name + '=' + repr(value)
    return info


def fileinfo_dict(f):
    if (f['mode'] & 0xE000) == 0xA000:
        type = 'l'  # symlink
    elif (f['mode'] & 0xE000) == 0x8000:
        type = '-'  # file
    elif (f['mode'] & 0xE000) == 0x4000:
        type = 'd'  # dir
    else:
        print >> sys.stderr, 'Unknown file type %04x for %s' % (f['mode'], fileinfo_str(f, False))
        type = '?'  # unknown

    f['mode'] = type + modestr(f['mode'] & 0x0FFF)
    return f


def fileinfo_str_header():
    return 'type', 'mode', 'userid', 'groupid', 'filelen', 'mtime', 'atime', 'ctime', 'fileID', 'domain', 'filename', 'linktarget', 'properties'


verbose = False
print_json = False

if __name__ == '__main__':
    verbose = True if len(sys.argv) > 1 and (sys.argv[1] == '--verbose' or sys.argv[1] == '-v') else False
    print_json = True if len(sys.argv) > 1 and (sys.argv[1] == '--json' or sys.argv[1] == '-j') else False
        
    path = '~/Library/Application Support/MobileSync/Backup'
    # udid = sys.argv[1] if len(sys.argv) == 2 else sys.argv[2]
    udid = 'b430aebcafd3a49f952596dd69032afb64fef25f'
    file = os.path.expanduser(os.path.join(path, udid, 'Manifest.mbdb'))

    mbdb = process_mbdb_file(file)
    
    if print_json:
        print(*fileinfo_str_header())

    for offset, fileinfo in mbdb.items():
        if offset in mbdx:
            fileinfo['fileID'] = mbdx[offset]
        else:
            fileinfo['fileID'] = "<nofileID>"
            print("No fileID found for %s" % fileinfo_str(fileinfo), file=sys.stderr)
        if print_json:
            print(json.dumps(fileinfo_dict(fileinfo)))
        else:
            print(fileinfo_str(fileinfo, verbose))
        
