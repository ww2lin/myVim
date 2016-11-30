" disable vi
set nocompatible
syntax enable

"tab as space
set expandtab

"mark p to toggle paste mode
map p :set invpaste<CR>

"current line highlight
set cursorline
highlight CursorLine cterm=NONE ctermbg=lightgrey 

"cursor highlight stays after moving
"nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
"map g to toggle highlight
"set cursorline!
"set cursorcolumn!

"subble CursorLine
highlight CursorColumn guibg=#404040

"show current file path as  status bar at the bottom
set laststatus=2
set statusline=%F

" Start NERDTree
"autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" NERDtree Toggle Shortcut
noremap <leader>q :NERDTreeToggle<CR>

"Easier split navigations
"We can use different key mappings for easy navigation between splits to save a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:
nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-L> <C-W><C-L>
nnoremap <S-H> <C-W><C-H>

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

" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

call pathogen#infect('bundle/*') 
