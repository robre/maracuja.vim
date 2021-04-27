" Maracuja colorscheme for vim
" Author: @r0bre <mail[ät]r0b.re>
" Created: 2021-04

" Concept: Framing is Purple/Blue/Pink. Numbers, LineHighlighters etc
" inside, we use oranges for relevant parts
" and throw around some nice colors so that its not too orange
" Also, use white as a base color aka Normal

highlight clear

if exists('syntax on')
    syntax reset
endif

set background=dark
let g:colors_name='maracuja' 

" credit: nachtleben.vim <schickele[ät]web.de>
function! s:hi(group, fg, bg, style, special)
  let l:command = 'hi ' . a:group

  if (!empty(a:fg))
    let l:command .= ' guifg=' . a:fg
  endif

  if (!empty(a:bg))
    let l:command .= ' guibg=' . a:bg
  endif

  if (!empty(a:style))
    let l:command .= ' gui=' . a:style
    let l:command .= ' cterm=' . a:style
  endif

  if (!empty(a:special))
    let l:command .= ' guisp=' . a:special
  endif

  execute l:command
endfunction 


" colors I like so far
let s:gree = '#24ca45' " green
let s:gras = '#8ec127' " grassy green
let s:grcy = '#05ffa1' " green cyan
let s:lgre = '#4cff4c' " light green

let s:cyan = '#6df6e9' " cyan
let s:lblu = '#33c4e4' " light blue
let s:dblu = '#317ace' " dark blue


let s:yely = '#fffb96' " shinier yellow
let s:yell = '#fed938' " yellow

let s:lora = '#eead32' " light orange
let s:alto = '#ffa700' " alternative orange (bit more shiny)
let s:mido = '#ff8000' " mid orange
let s:dora = '#f44b13' " dark orange
let s:redo = '#ff1500' " red orange

let s:mred = '#e51938' " red

let s:mage = '#ff71ce' " magenta
let s:purp = '#b967ff' " purple
let s:ptpu = '#c79dd7' " pastel purple
let s:dapu = '#9c3d7b' " dark purple
let s:dbpu = '#5c2d4b' " darker purple
let s:nnpk = '#ff00b4' " neon pink

let s:blac = '#050207' " purpleblack
let s:blpk = '#151220' " slightly brighter black
let s:dgra = '#283459' " dark gray
let s:gray = '#e0e0d8' " gray

let s:actualblack = '#000000'
let s:actualwhite = '#ffffff'


" GROUP | FG | BG | STYLE | SPECIAL
" Irrelevant ? 
call s:hi('StatusLine',       s:blac, s:dblu, 'NONE', '')
call s:hi('Cursor',           s:blac, s:lora, '', '')
call s:hi('StatusLineNC',     s:dblu, s:blac, 'NONE', '')
call s:hi('WarningMsg',       s:blac, s:mred, '', '')
call s:hi('WildMenu',         s:dblu, s:blac, '', '')


" Done Color Assignments
call s:hi('Statement',        s:mido, '', 'NONE', '')
call s:hi('Conditional',      s:dora, '', 'NONE', '')
call s:hi('Repeat',           s:dora, '', 'NONE', '')
call s:hi('Exception',        s:dora, '', 'NONE', '')
call s:hi('Operator',         s:redo, '', 'NONE', '')
call s:hi('Comment',          s:dapu, '', 'italic', '')
call s:hi('SpecialComment',   s:dapu, '', 'bold', '')
call s:hi('Constant',         s:gras, '', '', '')
call s:hi('String',           s:gras, '', '', '')
call s:hi('Character',        s:gras, '', '', '')
call s:hi('Number',           s:gree, '', '', '')
call s:hi('Boolean',          s:gree, '', '', '')
call s:hi('Special',          s:mred, '', '', '') " special chars
call s:hi('ColorColumn',      'NONE', s:blpk, '', '')
call s:hi('CursorLine',       'NONE', s:blpk, '', '')
call s:hi('CursorLineNr',     s:nnpk, s:blpk, 'NONE', '')
call s:hi('LineNr',           s:dbpu, s:blac, '', '')
call s:hi('Identifier',       s:cyan, '', '', '')
call s:hi('Function',         s:yell, '', '', '')
call s:hi('Todo',             s:yely, s:blac, 'REVERSE', '')
call s:hi('Error',            s:redo, s:blac, 'REVERSE', '')
call s:hi('PreProc',          s:mage, s:blac, '', '')
call s:hi('NonText',          s:dblu, '',     'NONE', '')
call s:hi('Search',           s:actualblack, s:yely, '', '')
call s:hi('IncSearch',        s:actualblack, s:yell, 'bold', '')
call s:hi('Type',             s:cyan, '', 'NONE', '')
call s:hi('Structure',        s:lblu, '', 'NONE', '')
call s:hi('StorageClass',     s:lblu, '', 'NONE', '')
call s:hi('VertSplit',        s:blac, s:purp, '', '')
call s:hi('Visual',           s:blac, s:yell, '', '')
call s:hi('Folded',           s:blac, s:purp, '', '')
call s:hi('FoldColumn',       s:blac, s:purp, '', '')
call s:hi('SpellBad',         'NONE', 'NONE', 'UNDERCURL', s:mred)
call s:hi('SpellCap',         'NONE', 'NONE', 'UNDERCURL', s:dblu)
call s:hi('SpellRare',        'NONE', 'NONE', 'UNDERCURL', s:mage)
call s:hi('SpellLocal',       'NONE', 'NONE', 'UNDERCURL', s:gree)
call s:hi('Pmenu',            s:blac, s:lora, '', '')
call s:hi('PmenuSel',         s:blac, s:mred, '', '')
call s:hi('PmenuSbar',        s:blac, s:lora, '', '')
call s:hi('PmenuThumb',       s:blac, s:mred, '', '')
call s:hi('MatchParen',       s:blac, s:dblu, '', '')
call s:hi('Underlined',       'NONE', 'NONE', 'UNDERLINE', '')
call s:hi('Ignore',           s:dgra, 'NONE', '', '')
call s:hi('DiffAdd',          s:blac, s:gree, '', '')
call s:hi('DiffChange',       s:blac, s:dblu, '', '')
call s:hi('DiffDelete',       s:blac, s:redo, 'NONE', '')
call s:hi('DiffText',         s:blac, s:redo, 'NONE', '')
call s:hi('Directory',          s:dblu, '', '', '')
call s:hi('Terminal',          s:gras, s:blpk, '', '')
call s:hi('QuickFixLine',          s:blpk, s:yely, '', '')
call s:hi('qfFileName',          s:mage, '', '', '')
call s:hi('qfLineNr',          s:lblu, '', '', '')
call s:hi('qfSeparator',          s:redo, '', '', '')

" Maybe rethink
call s:hi('Normal',           s:gray, '', '', '')

" Wip Color Assignments





" Some Language Specific Stuff
call s:hi("markdownBlockquote", s:gras, '', '' ,'')
call s:hi("markdownBold", s:gray, '', 'bold','')
call s:hi("markdownCode", s:lora, '', '', '')
hi! link markdownCodeBlock markdownCode
hi! link markdownCodeDelimiter markdownCode
call s:hi("markdownH1", s:redo, '', '', '')
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
call s:hi("markdownLinkText", s:dblu, '', '', '')
call s:hi("markdownUrl", s:cyan, '', 'italic', '')


call s:hi("pythonBuiltin", s:alto, '', '', '')
call s:hi("pythonBuiltinFunc", s:redo, '', '', '')
call s:hi("pythonBuiltinCall", s:redo, '', '', '')
hi link pythonTripleQuotes Comment
hi link pythonDoctest Comment
hi link pythonDoctest2 Comment







    
" Nachtleben... not sure if this is needed.
hi CursorLine     cterm=NONE
hi DiffText       cterm=NONE
hi Identifier     cterm=NONE
hi ModeMsg        cterm=NONE
hi StatusLine     cterm=NONE
hi StatusLineTerm cterm=NONE
hi TabLine        cterm=NONE
hi TabLineSel     cterm=NONE
hi ToolbarButton  cterm=NONE
hi VisualNOS      cterm=NONE
hi Underlined     ctermfg=NONE ctermfg=NONE
hi! link lilySlur         Comment
hi! link vimCommentString Comment
hi! link vimCommentTitle  Comment
hi! link TrailingSpac     DiffDelete

hi! link cType            Identifier
hi! link cBlock           PreProc
hi! link cStructure       Identifier

" Pandoc (2019-06-17)
hi! link pandocEmphasis Statement
hi! link pandocStrong   Statement
