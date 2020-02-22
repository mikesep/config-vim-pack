" Inspired by (mostly taken from)
" https://github.com/wincent/wincent/blob/a7823383a75a9b9998881c592afcec9bc038b9f9/roles/dotfiles/files/.vim/plugin/autocmds.vim#L27-L28

if exists('g:loaded_focus_bounds_blur')
  finish
endif
let g:loaded_focus_bounds_blur = 1

function! s:shouldBlur() abort
  let blacklist = [
    \ 'diff',
    \ ]
  return index(blacklist, &filetype) == -1
endfunction

function! s:blurEverything()
  "echom 'blurEverything: ' . @%
  if <SID>shouldBlur()
    let &colorcolumn = join(range(1,255), ',')
  endif
endfunction

function! s:blurOutOfBounds()
  "echom 'blurOutOfBounds: ' . @%
  if <SID>shouldBlur()
    let &colorcolumn = '+' . join(range(1,255), ',+')
  else
    "Clear out colorcolumn in case the buffer inherited the setting
    "from another blurred buffer.
    let &colorcolumn = ''
  endif
endfunction

augroup FocusBoundsBlur
  autocmd!
  autocmd BufEnter,FocusGained,VimEnter,WinEnter * call s:blurOutOfBounds()
  autocmd BufRead,FocusLost,WinLeave             * call s:blurEverything()
  "Blur at BufRead so that only one window has focus after vim -o/O
augroup END
