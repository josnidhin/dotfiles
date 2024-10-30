execute pathogen#infect()

filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
syntax enable

" Formatting
set ruler " Ruler on
set number relativenumber
set nu rnu " Line number on
set nowrap " Line wrapping off
set timeoutlen=250 " Time to wait after ESC
set ts=2 " Tabs 2 spaces
set shiftwidth=2 " Tabs under smart indent
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set autoindent
set smarttab
set expandtab

" Visual settings
colorscheme desert
set showmatch
set mat=5
:hi Folded ctermbg=0 " set the fold highlight colour

augroup JS
  au BufNewFile *.js 0r ~/.vim/templates/js.template | let IndentStyle = "js"
  au FileType javascript setlocal foldmethod=syntax
  au FileType javascript setlocal foldlevelstart=1
  au FileType javascript setlocal foldnestmax=1
augroup END

augroup MJS
  au BufNewFile *.mjs 0r ~/.vim/templates/mjs.template | let IndentStyle = "js"
  au FileType javascript setlocal foldmethod=syntax
  au FileType javascript setlocal foldlevelstart=1
  au FileType javascript setlocal foldnestmax=1
augroup END

augroup PY
  au FileType python setlocal ts=4
  au FileType python setlocal shiftwidth=4
  au FileType python setlocal foldmethod=syntax
  au FileType python setlocal foldlevelstart=1
  au FileType python setlocal foldnestmax=1
augroup END

augroup GO
  au BufNewFile *.go 0r ~/.vim/templates/go.template
  au FileType go setlocal nosmarttab
  au FileType go setlocal noexpandtab
  au FileType go setlocal foldmethod=syntax
  au FileType go setlocal foldlevelstart=1
  au FileType go setlocal foldnestmax=1
augroup END

augroup Jenkins
  au BufRead,BufNewFile Jenkinsfile* setlocal syntax=groovy
augroup END
