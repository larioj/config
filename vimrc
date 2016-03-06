execute pathogen#infect()
syntax on
filetype plugin indent on
let g:airline#extensions#tabline#enabled = 1

set smartindent
set tabstop=4
set shiftwidth=4
set number
colorscheme kitKat

"Leader
let mapleader=" "

"Tab navigation
nnoremap tn :tabnext<CR>
nnoremap tp :tabprev<CR>
nnoremap tm :tabm<Space>
nnoremap <leader>e :tabe<Space>

"Parenthesis matching
inoremap {<CR> {<CR>}<Esc>ko

"Autosave
inoremap <Esc> <Esc>:w<CR>

" Bash Aliases in Vim
let $BASH_ENV = "~/.bash_aliases"

noremap - <C-z>
nnoremap <leader>- ZZ
nnoremap <leader>r :! clear; bide r ./%

set mouse=a

nnoremap a A
nnoremap A a
nnoremap : ;
nnoremap ; :

"Ctags Shortcuts
nnoremap <leader>h <C-]>
nnoremap <leader>t <C-T>

nnoremap <2-leftMouse> <C-]>

set pastetoggle=<leader>p
