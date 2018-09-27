if exists('g:mikesep_config_defaults')
  finish
endif
let g:mikesep_config_defaults = 1

set hidden      "A buffer becomes hidden when it is abandoned
set lazyredraw  "Don't redraw while executing non-typed things

"Complete the longest common string, showing a menu, then
"cycle through full matches.
set wildmode=longest:full,full

"Line numbering
set number

"Window splits
set splitbelow  "New split goes below the current window
set splitright  "New vsplit goes to the right of the current window

"Searching
set nowrapscan  "Don't wrap around while searching
" (More search settings are configured by the loupe plugin)

set virtualedit=block  "Allow placing cursor beyond end of line

"Tabs and Indenting
set expandtab      "Generally prefer spaces over tabs
set tabstop=4
set shiftwidth=0    "Use value from 'tabstop'
set softtabstop=-1  "Use value from 'shiftwidth'

"Wrapping and Joining
set textwidth=100
set formatoptions+=1  "Don't break a line after a one-letter word
set nojoinspaces      "Always use one space when joining lines

"Bracket matching
set showmatch
set matchtime=2  "Tenths of a second to highlight the matching bracket

"Highlight otherwise invisible characters
set list
set listchars=           "Clear out default eol:$
set listchars+=nbsp:⦸
set listchars+=tab:\ \   "Tabs aren't necessarily bad
set listchars+=trail:‿

"Useful chars
"    inspect with ga
"    enter with CTRL-V u#### - see :help i_CTRL-V_digit
"
" ¶  U+00B6  pilcrow sign
" ·  U+00B7  middle dot
" »  U+00BB  right-pointing double angle quotation mark
" ‣  U+2023  triangular bullet
" ›  U+203A  single right-pointing angle quotation mark
" ‿  U+203F  undertie
" ⦸  U+29B8  circled reverse solidus
