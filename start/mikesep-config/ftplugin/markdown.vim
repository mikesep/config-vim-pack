setlocal textwidth=80

augroup prettier_markdown
  autocmd BufWritePre <buffer> Prettier
augroup END
