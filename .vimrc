syntax on
set autoindent
set tabstop=4
set expandtab
set smarttab

" Enable mouse support in console
set mouse=a

" Line Numbers PWN!
set number

" And so is Artificial Intellegence!
set smartcase

" Space will toggle folds!
nnoremap <space> za

set showcmd             " Show (partial) command in status line.

" spelling
if v:version >= 700
  " Enable spell check for text files
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif
