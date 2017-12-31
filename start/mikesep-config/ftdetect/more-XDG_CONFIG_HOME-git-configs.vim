" $VIMRUNTIME/filetype.vim detects the main git configs, but I split up my
" config into multiple files.

autocmd BufNewFile,BufRead */.config/git/config-*
      \ setfiletype gitconfig

if !empty($XDG_CONFIG_HOME)
  autocmd BufNewFile,BufRead $XDG_CONFIG_HOME/git/config-*
        \ setfiletype gitconfig
endif
