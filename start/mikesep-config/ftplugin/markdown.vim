let g:markdown_recommended_style = 0  " disable expandtab -- see :help ft-markdown-plugin
setlocal textwidth=80
setlocal tabstop=2

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
