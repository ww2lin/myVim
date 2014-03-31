syntax on
set autoindent
set tabstop=4
" Enable mouse support in console
set mouse=a

" Line Numbers PWN!
set number

" And so is Artificial Intellegence!
set smartcase

set ignorecase      " ignore case when searching 

set title           " show title in console title bar

set hlsearch        " highlight searches

" Space will toggle folds!
nnoremap <space> za

set showcmd             " Show (partial) command in status line.

" spelling
if v:version >= 700
  " Enable spell check for text files
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif
