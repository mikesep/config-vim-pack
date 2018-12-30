set textwidth=80

augroup prettier_markdown
  autocmd BufWritePre * Prettier
augroup END
