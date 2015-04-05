set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/syntastic'
Plugin 'derekwyatt/vim-scala'
Plugin 'ervandew/supertab'
Plugin 'motus/pig.vim'
Plugin 'godlygeek/tabular'
Plugin 'Townk/vim-autoclose'
Plugin 'OmniSharp/omnisharp-vim'
" Plugin 'vim-scripts/closeta.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
filetype plugin indent on
set relativenumber
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
colorscheme kitKat

"Mappings
nnoremap : ;
nnoremap ; :

"Compiler options
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -Wpedantic'

"Wrapping
set nowrap

"Tab navigation
nnoremap tn :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap te  :tabedit<Space>
nnoremap tm  :tabm<Space>

"Parenthesis matching
inoremap { {<CR>}<Esc>ko

"Numbering
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

"Ctags Shortcuts
nnoremap tj <C-]>
nnoremap tk <C-T>

"Folding
set foldmethod=indent
hi Folded ctermbg=Black
hi Folded ctermfg=Yellow
nnoremap tf zM 
nnoremap tu zR
