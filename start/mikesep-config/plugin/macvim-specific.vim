if exists('g:mikesep_config_macvim_specific')
  finish
endif
let g:mikesep_config_macvim_specific = 1

if has('gui_running') && has('gui_macvim')
  set guifont=FiraCode-Light:h15
  set macligatures

  let macvim_skip_cmd_opt_movement = 1

  "No scrollbars
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R

  " Keep the GUI window size when adding/removing a scrollbar/toolbar/tabline
  set guioptions+=k

  set guitablabel=%N:\ %M%f\ %r

  " command-left/right moves to the prev/next tab
  nmap <D-Left>  gT
  nmap <D-Right> gt

  " command-# goes to that tab
  nmap <D-1> :1tabnext<CR>
  nmap <D-2> :2tabnext<CR>
  nmap <D-3> :3tabnext<CR>
  nmap <D-4> :4tabnext<CR>
  nmap <D-5> :5tabnext<CR>
  nmap <D-6> :6tabnext<CR>
  nmap <D-7> :7tabnext<CR>
  nmap <D-8> :8tabnext<CR>
  nmap <D-9> :9tabnext<CR>
endif
