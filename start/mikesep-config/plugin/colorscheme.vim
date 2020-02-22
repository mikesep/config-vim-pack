if exists('g:mikesep_config_colorscheme')
  finish
endif
let g:mikesep_config_colorscheme = 1

let g:nord_uniform_status_lines = 1
function! s:customizeNord()
  " Link these groups to ColorColumn.
  " (This makes sense when used with focus-bounds-blur.)
  highlight clear NonText
  highlight link  NonText ColorColumn
  highlight clear EndOfBuffer
  highlight link  EndOfBuffer ColorColumn

  " https://github.com/arcticicestudio/nord-vim (MIT licensed)
  let s:nord1_gui = "#3B4252"
  let s:nord3_gui = "#4C566A"

  highlight clear LineNr
  exec "highlight LineNr guifg=" . s:nord3_gui . " guibg=" . s:nord1_gui

  " SpecialKey highlighting is for listchars's nbsp, space, tab, and trail.
  " I want them to match normal text.
  highlight clear SpecialKey
endfunction

function! s:customizeSolarized()
  " EndOfBuffer is already linked to NonText, so link NonText to ColorColumn to
  " make them all look the same.
  " (This makes sense when used with focus-bounds-blur.)
  highlight clear NonText
  highlight link  NonText ColorColumn

  " SpecialKey highlighting is for listchars's nbsp, space, tab, and trail.
  " I want them to match normal text.
  highlight clear SpecialKey

  " Macvim's default highlighting for CursorLineNr is too bright.
  highlight clear CursorLineNr
  highlight link  CursorLineNr LineNr
endfunction

autocmd ColorScheme nord      call s:customizeNord()
autocmd ColorScheme solarized call s:customizeSolarized()

if has('gui_running')
  colorscheme nord
else
  set background=dark
  colorscheme solarized
endif
