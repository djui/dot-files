" Vim color file
"
" Author: Uwe Dauernheim <uwe@dauernheim.net>
" Note: Based on the Monokai them for Textmate

hi clear

set background=dark
let g:colors_name="djui"

" Basics/Editor
hi Normal          ctermfg=15                         "#EEEEEC
hi NonText         ctermfg=1                          " ???
hi Underlined      ctermfg=244             cterm=underline
hi Cursor          ctermfg=1                          " ???
hi CursorLine                  ctermbg=235            "#303030
hi CursorColumn                ctermbg=235            "#262626
hi LineNr          ctermfg=236             cterm=bold "#303030
hi VertSplit       ctermfg=244 ctermbg=232 cterm=bold
hi VisualNOS                   ctermbg=238
hi Visual                      ctermbg=235
hi StatusLine      ctermfg=238 ctermbg=253
hi StatusLineNC    ctermfg=244 ctermbg=232
hi WildMenu        ctermfg=81  ctermbg=16
hi Directory       ctermfg=118             cterm=bold
hi Repeat          ctermfg=197             cterm=bold
hi Search          ctermfg=253 ctermbg=66
hi IncSearch       ctermfg=193 ctermbg=16
hi MatchParen      ctermfg=16  ctermbg=208 cterm=bold
hi Folded          ctermfg=67  ctermbg=16
hi FoldColumn      ctermfg=67  ctermbg=16

" Marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi Special         ctermfg=81  ctermbg=232
hi SpecialKey      ctermfg=245

" Complete menu
hi Pmenu           ctermfg=81  ctermbg=16
hi PmenuSel                    ctermbg=244
hi PmenuSbar                   ctermbg=232
hi PmenuThumb      ctermfg=81

" Diff
hi DiffAdd                     ctermbg=24             " ???
hi DiffChange      ctermfg=181 ctermbg=239            " ???
hi DiffDelete      ctermfg=162 ctermbg=53             " ???
hi DiffText                    ctermbg=102 cterm=bold " ???

hi Todo            ctermfg=1               cterm=bold "#FF0000
hi Title           ctermfg=166
hi Question        ctermfg=81
hi ModeMsg         ctermfg=186
hi MoreMsg         ctermfg=186
hi WarningMsg      ctermfg=231 ctermbg=238 cterm=bold
hi Error           ctermfg=219 ctermbg=89
hi ErrorMsg        ctermfg=199 ctermbg=16  cterm=bold
hi Exception       ctermfg=118             cterm=bold
hi Ignore          ctermfg=244 ctermbg=232

" Data types
hi Boolean         ctermfg=186                        "#D7D787
hi Character       ctermfg=186                        "#D7D787
hi Number          ctermfg=15                         "#EEEEEC
hi String          ctermfg=186                        "#D7D787
hi SpecialChar     ctermfg=186             cterm=bold "#D7D787
hi Comment         ctermfg=242                        "#6C6C6C
hi SpecialComment  ctermfg=242             cterm=bold "#6C6C6C
hi Identifier      ctermfg=148                        "#AFD700
hi Include         ctermfg=197                        "#FF005F
hi Conditional     ctermfg=81                         "#5FD7FF
hi Float           ctermfg=15                         "#EEEEEC
hi Constant        ctermfg=186                        "#D7D787
hi Operator        ctermfg=15                         "#EEEEEC
hi Function        ctermfg=1                          " ???
hi Define          ctermfg=197                        "#FF005F
hi Delimiter       ctermfg=15              cterm=bold "#EEEEEC
hi Keyword         ctermfg=197                        "#FF005F
hi Statement       ctermfg=197             cterm=bold "#FF005F
hi Type            ctermfg=197                        "#FF005F
hi Typedef         ctermfg=1                          " ???
hi Label           ctermfg=1                          " ???
hi PreCondit       ctermfg=197                        "#FF005F
hi PreProc         ctermfg=197             cterm=bold "#FF005F
hi Macro           ctermfg=148                        "#AFD700
hi Debug           ctermfg=1                          " ???
hi StorageClass    ctermfg=1                          " ???
hi Structure       ctermfg=148                        "#AFD700
hi Tag             ctermfg=197

" Erlang specific
hi link erlangTodo           Todo
hi link erlangString         String
hi link erlangNoSpellString  String
hi link erlangModifier       SpecialChar
hi link erlangStringModifier SpecialChar
hi link erlangComment        Comment
hi link erlangVariable       Identifier
hi link erlangInclude        Include
hi link erlangRecordDef      Keyword
hi link erlangAttribute      Keyword
hi link erlangKeyword        Keyword
hi link erlangMacro          Macro
hi link erlangDefine         Define
hi link erlangPreCondit      PreCondit
hi link erlangPreProc        PreProc
hi link erlangDelimiter      Delimiter
hi link erlangBitDelimiter               ctermfg=1                          " ???
hi link erlangOperator       Operator
hi link erlangConditional    Conditional
hi link erlangGuard          Conditional
hi link erlangBoolean        Boolean
hi link erlangAtom           Constant
hi link erlangRecord         Structure
hi link erlangInteger        Number
hi link erlangFloat          Float
hi link erlangHex            Number
hi link erlangGBIF           Keyword
hi link erlangBIF            Keyword
hi link erlangFun                        ctermfg=1                          " ???
hi link erlangList           Delimiter
hi link erlangTuple          Delimiter
hi link erlangBinary         SpecialChar
hi link erlangBitVariable                ctermfg=1                          " ???
hi link erlangBitType        SpecialChar
hi link erlangType           Type
hi link erlangBitSize        SpecialChar
