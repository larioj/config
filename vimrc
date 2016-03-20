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

"Parenthesis matching
inoremap {<CR> {<CR>}<Esc>ko

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
nnoremap <leader>e <C-]>
nnoremap <leader>u <C-T>

set pastetoggle=<leader>p

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave"]
