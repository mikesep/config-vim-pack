setlocal tabstop=2

augroup prettier_typescriptreact
  autocmd BufWritePre <buffer> Prettier
augroup END
