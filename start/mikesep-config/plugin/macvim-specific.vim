if exists('g:mikesep_config_macvim_specific')
  finish
endif
let g:mikesep_config_macvim_specific = 1

if has('gui_macvim')
  set guifont=Fira\ Code:h14
  set macligatures

  " Map command-# to go to that tab
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
