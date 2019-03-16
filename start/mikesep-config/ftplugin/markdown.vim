setlocal textwidth=80

let g:markdown_fenced_languages = [
  \ 'bash=sh',
  \ 'cpp',
  \ 'go',
  \ 'html',
  \ 'javascript',
  \ 'js=javascript',
  \ 'python',
  \ 'sh',
\ ]

augroup prettier_markdown
  autocmd BufWritePre <buffer> Prettier
augroup END
