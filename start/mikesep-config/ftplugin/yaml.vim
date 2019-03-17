setlocal tabstop=2
setlocal textwidth=80

augroup prettier_yaml
  autocmd BufWritePre <buffer> Prettier
augroup END
