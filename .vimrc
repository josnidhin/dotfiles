execute pathogen#infect()

filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.
syntax enable

" Formatting
set ruler " Ruler on
set nu " Line number on
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
set showmatch
set mat=5

augroup JS
  au BufNewFile *.js 0r ~/.vim/templates/js.template | let IndentStyle = "js"
  au FileType javascript setlocal foldmethod=syntax
  au FileType javascript setlocal foldlevelstart=1
  au FileType javascript setlocal foldnestmax=1
augroup END

augroup GO
  au BufNewFile *.go 0r ~/.vim/templates/go.template
augroup END
