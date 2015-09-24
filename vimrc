" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'php.vim-html-enhanced'
Plugin 'plasticboy/vim-markdown'
Plugin 'wlangstroth/vim-racket'
Plugin 'stephpy/vim-yaml'
Plugin 'eagletmt/neco-ghc'

" Unused
" Plugin 'scrooloose/nerdtree'
" Plugin 'maciakl/vim-neatstatus'
" Plugin 'derekwyatt/vim-scala'
" Plugin 'motus/pig.vim'
" Plugin 'Townk/vim-autoclose'
" Plugin 'vim-scripts/AutoClose'
" Plugin 'tpope/vim-dispatch'
" Plugin 'OmniSharp/omnisharp-vim'
" Plugin 'majutsushi/tagbar'
" Plugin 'jtratner/vim-flavored-markdown'
" Plugin 'jcf/vim-latex'
" Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'vim-scripts/brainfuck-syntax'
" Plugin 'Shougo/vimproc.vim'
" Plugin 'Shougo/vimshell.vim'

call vundle#end()
filetype plugin indent on

" Omnicomplete
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" General Behaviour
syntax on
set relativenumber
set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
colorscheme kitKat

"Mappings
nnoremap : ;
nnoremap ; :

"Wrapping
set nowrap

"Tab navigation
nnoremap tn :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap te  :tabedit<Space>
nnoremap tm  :tabm<Space>

"Parenthesis matching
inoremap {<CR> {<CR>}<Esc>ko

"Numbering
" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber

"Ctags Shortcuts
nnoremap tj <C-]>
nnoremap tk <C-T>

"Folding
set foldmethod=indent
nnoremap tf zM
nnoremap tu zR

"CtrlP
" let g:ctrlp_working_path_mode = 'ra'
" nnoremap to :tabedit<Space><CR>:CtrlP<CR>
" nnoremap tp :tabedit<Space><CR>:CtrlP 

"Whitespace!!
set list
set listchars=tab:..,trail:∙,extends:#,nbsp:●

"Spell Checking
set spell

"Autosave
inoremap <Esc> <Esc>:w<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Bash Aliases in Vim
let $BASH_ENV = "~/.bash_aliases"

" Set mouse
set mouse=a

" Set default run to script
nnoremap fr :! bide -r ./%

" Haskell Warning Suppression
let g:syntastic_haskell_ghc_mod_args = '-g -fno-warn-missing-signatures'
