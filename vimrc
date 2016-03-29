call plug#begin()
Plug 'scrooloose/syntastic', { 'for': ['racket', 'sml'] }
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'derekwyatt/vim-scala'
Plug 'vim-scripts/vim-auto-save'
Plug 'wlangstroth/vim-racket'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'kalmanb/vim-scala-auto-import'
Plug 'cypok/vim-sml'
call plug#end()

syntax on
set nocompatible
filetype plugin indent on
let g:airline#extensions#tabline#enabled = 1

set smartindent
set tabstop=4
set shiftwidth=4
set number

syntax enable
let g:solarized_termcolors = 256
set background=dark
colorscheme solarized

inoremap {<CR> {<CR>}<Esc>ko

"Leader
let mapleader=" "

"Tab navigation
nnoremap tn :tabnext<CR>
nnoremap tp :tabprev<CR>
nnoremap tm :tabm<Space>

" Bash Aliases in Vim
let $BASH_ENV = "~/.bash_aliases"

noremap - <C-z>
nnoremap <leader>- ZZ

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

runtime plugin/eclim.vim
if eclim#PingEclim(0)
	let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
endif

set completeopt-=preview

" bide mappings
nnoremap <leader>r :! bide r ./%
nnoremap <leader>f :! bide f ./% <CR><CR>
nnoremap <leader>t :! bide t ./%

inoremap <silent> <Esc> <Esc>`^

let g:JavaImpPaths = "/usr/share/java, /usr/lib/jvm/java-8-oracle/jre/lib"
let g:JavaImpDataDir = $HOME . "/.vim/JavaImp"

autocmd! BufWritePost * Neomake

