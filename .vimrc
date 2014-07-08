"tab as space
set expandtab

"current line highlight
"set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white
"cursor highlight stays after moving
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
"map g to toggle highlight
"nnoremap g :set cursorline! cursorcolumn!<CR>
nnoremap g :set cursorline!
set cursorline!
"sub directory for .vim plugins
call pathogen#infect() 

"coffee scirpt
syntax enable
filetype plugin indent on

set autoindent
set tabstop=2
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
