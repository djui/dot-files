#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import os
import sys
import traceback


__version__ = '1.0'


class Logger():
  def __init__(self, level=0):
    self.level = level

  def prefix(self, s):
    #return '[{: <5}]'.format(s)
    return '{}:'.format(s)

  def log(self, s):
    print(s, file=sys.stderr)
  
  def trace(self, msg):
    if self.level >= 3:
      self.log('{} {}'.format(self.prefix('Trace'), msg))

  def debug(self, msg):
    if self.level >= 2:
      self.log('{} {}'.format(self.prefix('Debug'), msg))
  
  def info(self, msg):
    if self.level >= 1:
      self.log('{} {}'.format(self.prefix('Info'), msg))

  def warn(self, msg):
    self.log('{} {}'.format(self.prefix('Warn'), msg))

  def error(self, msg):
    self.log('{} {}'.format(self.prefix('Error'), msg))


def main(args):
  log = Logger(args.verbose)
  
  try:
    f = open(args.file)
    log.info('Code goes here')
    return 0,
  except Exception as e:
    log.trace(traceback.format_exc())  
    return 1, 'Unknown error occurred'


def filepath(v):
  f = os.path.expanduser(v)
  if not os.path.isfile(f) and not os.path.islink(f):
    raise argparse.ArgumentTypeError("file not found: " % v)
  return f


if __name__ == '__main__':
  try:
    parser = argparse.ArgumentParser(description='My CLI app', formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('file', metavar='FILE', type=filepath, nargs='?', default='/dev/stdin', help='path to file')
    parser.add_argument('-x', '--XXX', action='store_true', help='XXX')
    parser.add_argument('-v', '--verbose', action='count', default=0, help='set verbosity level')
    parser.add_argument('-V', '--version', action='version', version='%(prog)s ' + __version__)
    parser.exit(*main(parser.parse_args()))
  except KeyboardInterrupt:
    sys.exit(1)
