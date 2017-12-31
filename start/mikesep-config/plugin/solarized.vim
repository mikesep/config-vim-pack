if exists('g:mikesep_config_solarized')
  finish
endif
let g:mikesep_config_solarized = 1

set background=dark
colorscheme solarized

" EndOfBuffer is already linked to NonText, so link NonText to ColorColumn to
" make them all look the same.
" (This makes sense when used with focus-bounds-blur.)
highlight clear NonText
highlight link  NonText ColorColumn

" SpecialKey highlighting is for listchars's nbsp, space, tab, and trail.
" I want their background to match normal text.
highlight clear SpecialKey

" Macvim's default highlighting for CursorLineNr is too bright.
highlight clear CursorLineNr
highlight link  CursorLineNr LineNr
