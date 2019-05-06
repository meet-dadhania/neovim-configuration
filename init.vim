" Author : Meet Dadhania (pyth0x)
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>  Plugins <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
set nocompatible
filetype off  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Shougo/deoplete.nvim'
Plugin 'deoplete-plugins/deoplete-jedi'
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
nnoremap <F6> :SLoad cp<CR>
nnoremap <F7> :SClose <CR>
nnoremap <ESC> <C-\><C-n> <CR>
autocmd filetype cpp nnoremap <F5> :w <bar> silent !g++ -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && %:r<CR>
map <F2> :NERDTreeToggle <CR>
inoremap <expr> <Tab>  deoplete#mappings#manual_complete()
let mapleader = ";"

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Ultisnips <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Airline <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Remap ESC <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Hard Mode <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:hardtime_default_on = 1
let g:list_of_disabled_keys= ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:hardtime_maxcount = 100

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Deopelete <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:deoplete#sources#jedi#python_path = 'C:\Users\meetd\AppData\Local\Programs\Python\Python37\python.exe'
let g:python3_host_prog = 'C:\Users\meetd\AppData\Local\Programs\Python\Python37\python.exe'
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Codeforces <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:CodeForcesUsername = '16bce103@nirmauni.ac.in'
let g:CodeForcesPassword = 'Dharvidadhania15'
let g:CodeForcesContestId = 518
let g:CodeForcesTemplate = '/mnt/c/cp/template.cpp'
let g:CodeForcesInput = 'sampleInput'
let g:CodeForcesOutput = 'sampleOutput'
let g:CodeForcesUserOutput = 'myCorrectOutput'

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>> MISC <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
set background=dark
colorscheme solarized8
syntax on
set mouse=a
set autoread
set encoding=utf-8
set nu
set tabstop=4
set shiftwidth=4
set expandtab

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
