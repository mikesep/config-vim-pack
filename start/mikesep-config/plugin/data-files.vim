if exists('g:mikesep_config_data_files')
  finish
endif
let g:mikesep_config_data_files = 1

let s:tmpdir = $HOME . '/.vim/tmp'

let &viminfo .= ',n' . s:tmpdir . '/viminfo'

set backup
let &backupdir = s:tmpdir . '/backupfiles'

"List of directory names for the swap file
"(trailing // keeps file names unique)
let &directory = s:tmpdir . '/swapfiles//'

for dir in ['backupdir', 'directory']
  if !isdirectory(eval('&' . dir))
    echoerr dir eval('&' . dir) 'does not exist!'
  endif
endfor
