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
Plugin 'vim-syntastic/syntastic'
Plugin 'rainbow_parentheses.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/LeaderF'
Plugin 'mileszs/ack.vim'
Plugin 'chxuan/cpp-mode'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()
filetype plugin indent on

"*******************************leader****************************
let mapleader = ","
"*******************************neocomplete****************************
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"*******************************vim-indent-guide****************************
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
"*******************************smooth-scroll****************************
noremap <silent> <C-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
noremap <silent> <C-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
noremap <silent> <C-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <C-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"*******************************LeaderF****************************
nnoremap <leader>f :LeaderfFile ~<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0
"*******************************ack.vim****************************
nnoremap <leader>F :Ack!<space>
"*******************************cpp-mode****************************
nnoremap <silent> <leader>a :Switch<cr>
"*******************************rainbow_pare****************************
let g:rainbow_active = 1
"*******************************Vundle-end****************************
let g:neocomplete#enable_at_startup = 1

"*******************************Ctags*********************************
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
let g:tagbar_ctags_bin='ctags'
set tags=tags;/
nmap <F10> :TagbarToggle<CR> 

"******************************airline********************************
let g:airline#extensions#tabline#enabled = 1

"*****************************winmanager******************************
let NERDTreeWinSize=25
let g:NERDTree_title='NERD Tree'
map <F9> :NERDTreeToggle<CR>
"*****************************syntastic******************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_cpp_check_header = 1
" let g:syntastic_cpp_remove_include_errors = 1

"设置工程查找头文件
let g:syntastic_cpp_config_file = '.my_custom_include_file_for_syntastic'

" 设置语法检查编译器
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++11'
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
"************************************vim-commentary****************************
autocmd FileType python,shell,coffee set commentstring=#\ %s
autocmd FileType java,c,cpp set commentstring=//\ %s
"************************************my-set****************************
"代码缩进以及排版
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码

set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf-8
set fileencodings=gb18030,utf-8,ucs-bom,gbk,gb2312,cp936
set number
set nobackup
set t_Co=256
set foldenable
set ignorecase
set fdm=marker
set foldmethod=manual
colorscheme desert
set cul
set hlsearch
set ignorecase
syntax on
syntax enable
if has('mouse')
    set mouse-=a
endif
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
