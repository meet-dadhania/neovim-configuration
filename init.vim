" Author : Meet Dadhania (pyth0x)
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  Plugins <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
set nocompatible
filetype off  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Shougo/deoplete.nvim'  " python completion only for neovim, VIM users DELETE THIS !!
Plugin 'deoplete-plugins/deoplete-jedi' " python completion only for neovim, VIM users DELETE THIS !!
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'mhinz/vim-startify'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-sensible'
Plugin 'lilydjwg/colorizer'
Plugin 'RRethy/vim-illuminate'
Plugin 'xuhdev/SingleCompile'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'zhou13/vim-easyescape'
Plugin 'takac/vim-hardtime'
Plugin 'lifepillar/vim-solarized8'
Plugin 'junegunn/vim-easy-align'
Plugin 'Igorjan94/codeforces.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
call vundle#end()
filetype plugin indent on

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  Bindings <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
autocmd filetype cpp nnoremap <F5> :w <bar> silent !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && %:r<CR>
nnoremap <F8> :SSave cp<CR> " Save a session to capture the position of windows and buffers
nnoremap <F6> :SLoad cp<CR> " Just load it using hotkey when you open vim
nnoremap <F7> :SClose <CR> " Close after you complete coding
nnoremap <ESC> <C-\><C-n> <CR> 
map <F2> :NERDTreeToggle <CR>
inoremap <expr> <Tab>  deoplete#mappings#manual_complete()
let mapleader = ";"
cnoremap jk <ESC>

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Ultisnips <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Airline <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:airline_powerline_fonts = 1 " Use powerline_font symbols
let g:airline_theme = 'solarized'

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Remap ESC <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Hard Mode <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:hardtime_default_on = 1
let g:list_of_disabled_keys= ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:hardtime_maxcount = 100

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Deopelete <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:deoplete#sources#jedi#python_path = 'path_to_python.exe'
let g:python3_host_prog = 'path_to_python.exe'
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Codeforces <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:CodeForcesUsername = 'Enter_your_username'
let g:CodeForcesPassword = 'Enter_your_password'
let g:CodeForcesContestId = 518 " Contest ID
let g:CodeForcesTemplate = 'path_to_your_coding_template'
let g:CodeForcesInput = 'sampleInput'
let g:CodeForcesOutput = 'sampleOutput'
let g:CodeForcesUserOutput = 'myCorrectOutput'

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> MISC <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
set background=dark " Solarized color theme
colorscheme solarized8 " Solarized color theme
syntax on " Syntax highlighting
set mouse=a " copy paste using mouse
set autoread " auto reload file when they change in memory
set encoding=utf-8
set nu
set tabstop=4
set shiftwidth=4
set expandtab

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
