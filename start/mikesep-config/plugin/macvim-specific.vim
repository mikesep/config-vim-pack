if exists('g:mikesep_config_macvim_specific')
  finish
endif
let g:mikesep_config_macvim_specific = 1

if has('gui_macvim')
  set guifont=Fira\ Code:h14
  set macligatures
endif
