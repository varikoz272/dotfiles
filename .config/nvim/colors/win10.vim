" Maintainer: Dmitry Kichenko (dmitrykichenko@gmail.com)

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "win10-dark"

" Vim >= 7.0 specific colors
if version >= 700
  " highlights current line
  hi CursorLine guibg=#001741
  " cursor's colour
  hi CursorColumn guibg=#ffffff
  hi MatchParen	  guifg=#ffffff guibg=#439ea9 gui=bold
  hi Pmenu	  guifg=#d3effb guibg=#1E415E
  hi PmenuSel	  guifg=#d3effb guibg=#2D7889

  " Search
  hi IncSearch  gui=BOLD      guifg=none   guibg=#0e3171
  hi Search     gui=NONE      guifg=none   guibg=#0e3171
endif

" General colors
hi Cursor 		guifg=#d3effb guibg=#0fbcd5 gui=none
hi Normal 		guifg=#d3effb guibg=#000219 gui=none
 " e.g. tildes at the end of file
hi NonText 		guifg=#0e4171  gui=none
hi LineNr 		guifg=#f8eba0 guibg=#000219 gui=none
hi StatusLine 	guifg=#8cd7fd guibg=#001741 gui=italic
hi StatusLineNC guifg=#8cd7fd guibg=#001741 gui=none
hi VertSplit 	guifg=#1A3951 guibg=#1A3951 gui=none
hi Folded 		guifg=#68CEE8 guibg=#1A3951 gui=none
hi FoldColumn   guifg=#1E415E guibg=#1A3951 gui=none
hi Title		guifg=#d3effb guibg=NONE	gui=bold
 " Selected text color
hi Visual		guifg=none guibg=#001741 gui=none
hi SpecialKey	guifg=none guibg=#001741 gui=none

"
" Syntax highlighting
"
hi Comment 		guifg=#0e4171 gui=italic
hi Todo 		guifg=#9ad769 guibg=#579929 gui=bold
hi Constant 	guifg=#9ad769 gui=none
hi String 		guifg=#9ad769 gui=italic
 " names of variables in PHP
 " hi Identifier 	guifg=#8ac6f2 gui=none
 " Function names as in python. 
hi Function 	guifg=#2dcdfc gui=none
 " declarations of type, e.g. int blah
hi Type 		guifg=#8cd7fd gui=none
 " statement, such as 'hi' right here
hi Statement 	guifg=#5fbcd5 gui=none
hi Keyword		guifg=#3fd6fa gui=none
 "  specified preprocessed words (like bold, italic etc. above)
hi PreProc 		guifg=#d6df74 gui=none
hi Number		guifg=#f8eba0 gui=none
hi Special		guifg=#0fbcd5 gui=none




" #000219
" #d3effb
" #d3effb
" #000219
" #001741
" #8cd7fd
" #2dcdfc
" #cee682
" #9ad769
" #b6d6e5
" #5fbcd5
" #addff9
" #3fd6fa
" #cee682
" #9ad769
" #56d6e5
" #0fbcd5
" #f8eba0
" #d6df74










