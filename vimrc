
let path = expand('<sfile>:p:h')
let wiki = {
      \ 'name': 'dkz.github.io',
      \ 'path': path . '/_source/',
      \ 'path_html': path,
      \ 'template_path': path . '/_source/',
      \ 'template_ext': '.template',
      \ 'template_default': 'default',
      \ 'nested_syntaxes': {'bash': 'bash', 'python': 'python', 'clojure': 'clojure', 'common-lisp': 'lisp', 'java': 'java'}
      \ }

if exists('g:vimwiki_list')
  call add(g:vimwiki_list, wiki)
else
  let g:vimwiki_list = [wiki]
endif

call vimwiki#vars#init()
