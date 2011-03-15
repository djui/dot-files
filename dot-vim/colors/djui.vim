" Vim color file
"
" Author: Uwe Dauernheim <uwe@dauernheim.net>
" Note: Based on the Monokai them for Textmate

hi clear

set background=dark
let g:colors_name="djui"

" Basics/Editor
hi Normal          ctermfg=15                         "#EEEEEC
hi NonText         ctermfg=236                        "#303030
hi Underlined      ctermfg=244             cterm=underline
hi LineNr          ctermfg=236             cterm=bold "#303030
hi StatusLine      ctermfg=238 ctermbg=253            "grey on dark grey
hi StatusLineNC    ctermfg=253             cterm=none "grey on nothing
hi VertSplit       ctermfg=253             cterm=none "grey on nothing
hi Cursor          ctermfg=1                          " ???
hi CursorLine      ctermfg=1                          " ???
hi CursorColumn    ctermfg=1                          " ???
hi VisualNOS       ctermfg=1                          " ???
hi Visual                      ctermbg=81             "#5FD7FF
hi ModeMsg         ctermfg=255             cterm=bold "yellow
hi WildMenu        ctermfg=1                          " ???
hi Directory       ctermfg=4                          "blue
hi Repeat          ctermfg=1                          " ???
hi Search                      ctermbg=81             "#5FD7FF
hi IncSearch       ctermfg=81                         "#5FD7FF
hi MatchParen      ctermfg=1  ctermbg=none cterm=bold "red
hi Folded          ctermfg=1                          " ???
hi FoldColumn      ctermfg=1                          " ???

" Marks column
hi SignColumn      ctermfg=1                          " ???
hi Special         ctermfg=255             cterm=bold "white
hi SpecialKey      ctermfg=1                          " ???

" Complete menu
hi Pmenu           ctermfg=1                          " ???
hi PmenuSel        ctermfg=1                          " ???
hi PmenuSbar       ctermfg=1                          " ???
hi PmenuThumb      ctermfg=1                          " ???

" Diff
hi DiffAdd                     ctermbg=24             " ???
hi DiffChange      ctermfg=181 ctermbg=239            " ???
hi DiffDelete      ctermfg=162 ctermbg=53             " ???
hi DiffText                    ctermbg=102 cterm=bold " ???

hi Title           ctermfg=1                          " ???
hi Question        ctermfg=1                          " ???
hi MoreMsg         ctermfg=255             cterm=bold "white
hi WarningMsg      ctermfg=1                          " ???
hi Error           ctermfg=1                          " ???
hi ErrorMsg        ctermfg=1  ctermbg=none            "red
hi Exception       ctermfg=1                          " ???
hi Ignore          ctermfg=242             cterm=bold "grey

" Data types
hi Boolean         ctermfg=186                        "#D7D787
hi Character       ctermfg=186                        "#D7D787
hi Number          ctermfg=15                         "#EEEEEC
hi String          ctermfg=186                        "#D7D787
hi SpecialChar     ctermfg=186             cterm=bold "#D7D787
hi Comment         ctermfg=241                        "#6C6C6C
hi SpecialComment  ctermfg=242             cterm=bold "#6C6C6C
hi Identifier      ctermfg=148             cterm=none "#AFD700
hi Include         ctermfg=197                        "#FF005F
hi Conditional     ctermfg=81                         "#5FD7FF
hi Float           ctermfg=15                         "#EEEEEC
hi Constant        ctermfg=186                        "#D7D787
hi Operator        ctermfg=15                         "#EEEEEC
hi Function        ctermfg=197             cterm=bold "#FF005F
hi Define          ctermfg=197                        "#FF005F
hi Delimiter       ctermfg=15              cterm=bold "#EEEEEC
hi Keyword         ctermfg=81                         "#5FD7FF
hi Statement       ctermfg=197             cterm=bold "#FF005F
hi Type            ctermfg=197                        "#FF005F
hi Typedef         ctermfg=1                          " ???
hi Label           ctermfg=1                          " ???
hi PreCondit       ctermfg=197                        "#FF005F
hi PreProc         ctermfg=197             cterm=bold "#FF005F
hi Macro           ctermfg=148             cterm=bold "#AFD700
hi Debug           ctermfg=1                          " ???
hi StorageClass    ctermfg=1                          " ???
hi Structure       ctermfg=148             cterm=bold "#AFD700
hi Tag             ctermfg=197                        "#FF005F
hi Todo            ctermfg=1  ctermbg=none cterm=bold "#FF0000

" Erlang specific
hi link erlangTodo           Todo
hi link erlangString         String
hi link erlangNoSpellString  String
hi link erlangModifier       SpecialChar
hi link erlangStringModifier SpecialChar
hi link erlangComment        Comment
hi link erlangVariable       Identifier
hi link erlangInclude        Include
hi link erlangRecordDef      Define
hi link erlangAttribute      Define
hi link erlangKeyword        Keyword
hi link erlangMacro          Macro
hi link erlangDefine         Define
hi link erlangPreCondit      PreCondit
hi link erlangPreProc        PreProc
hi link erlangDelimiter      Delimiter
hi      erlangBitDelimiter               ctermfg=1    " ???
hi link erlangOperator       Operator
hi link erlangConditional    Conditional
hi link erlangGuard          Conditional
hi link erlangBoolean        Boolean
hi link erlangAtom           Constant
hi link erlangRecord         Structure
hi link erlangInteger        Number
hi link erlangFloat          Float
hi link erlangHex            Number
hi      erlangGBIF                       ctermfg=248  "grey
hi      erlangBIF                        ctermfg=248  "grey
hi link erlangFun            Function
hi link erlangList           Delimiter
hi link erlangTuple          Delimiter
hi link erlangBinary         SpecialChar
hi      erlangBitVariable                ctermfg=1    " ???
hi link erlangBitType        SpecialChar
hi link erlangType           Type
hi link erlangBitSize        SpecialChar
