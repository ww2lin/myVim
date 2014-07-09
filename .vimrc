"tab as space
set expandtab

"mark p to toggle paste mode
map p :set invpaste<CR>

"current line highlight
"set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white
"cursor highlight stays after moving
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
"map g to toggle highlight
nnoremap g :set cursorline! cursorcolumn!<CR>
"nnoremap g :set cursorline!
set cursorline!
set cursorcolumn!

"subble CursorLine
highlight CursorColumn guibg=#404040

" Start NERDTree
autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

"coffee scirpt
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

call pathogen#infect('bundle/*') 
syntax on
filetype plugin indent on 
