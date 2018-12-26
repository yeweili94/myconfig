"***********************************Vundle-start**********************
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'Chiel92/vim-autoformat'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplete.vim'
Plugin 'godlygeek/tabular'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on
"*******************************Vundle-end****************************
let g:neocomplete#enable_at_startup = 1

"*******************************Ctags*********************************
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let g:tagbar_ctags_bin='ctags'
nmap <F11> :TagbarToggle<CR> 

"******************************airline********************************
let g:airline#extensions#tabline#enabled = 1

"*****************************winmanager******************************
let NERDTreeWinSize=25
let g:NERDTree_title='NERD Tree'
map <F10> :NERDTreeToggle<CR>
"*****************************syntastic******************************
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++11'

"************************************my-set****************************
set fileencodings=gb18030,utf-8,ucs-bom,gbk,gb2312,cp936
set termencoding=utf-8
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set ai
set expandtab
set nobackup
set t_Co=256
set foldenable
set fdm=marker
set foldmethod=manual
colorscheme desert
"set cuc
set cul
syntax on
syntax enable
if has('mouse')
    set mouse-=a
endif
