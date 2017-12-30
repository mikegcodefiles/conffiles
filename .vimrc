" final update today
" use jj to enter normal mode 
inoremap jj <Esc>

" j and k now move up virtual lines instead of physical
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" yank and paste now copy to and paste from clipboard respectively
vnoremap y "+y
vnoremap d "+d
nnoremap p "+p

" Stop breaking words at end of terminal
set wrap
set linebreak

set background=dark
" enable syntax colors
syntax enable
colorscheme elflord

" auto indent and detect file type 
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces & remove 4 with <BS>
" Note - it appears that I'm using tabs visually but I'm not
set softtabstop=4 expandtab

" Line numbers
set number
set relativenumber

" unbind ctrl+h/j/k/l
nnoremap <c-h> <Nop>
nnoremap <c-j> <Nop>
nnoremap <c-k> <Nop>
nnoremap <c-l> <Nop>
inoremap <c-h> <Nop>
inoremap <c-j> <Nop>
inoremap <c-k> <Nop>
inoremap <c-l> <Nop>

" ctrl+e/ctrl+d to move viewport up/down
nnoremap <c-d> <c-y>

" highlight current line
set cursorline
hi CursorLine cterm=none ctermbg=233
