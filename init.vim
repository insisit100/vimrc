" 设置显示行号
set number
set relativenumber

" 设置缩进
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4 
set softtabstop=4
set expandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 
set wrap
set textwidth=80

" 设置自动切换目录
set autochdir

" 设置不跟vi兼容
set nocompatible

" 设置字体
set guifont=Consolas:h12

" 设置ruler，显示cursor当前的行数和列数
set ruler

" 设置没有备份和swap文件
set nobackup
set noswapfile 

" 设置搜索时高亮
set hlsearch

"
set showmode

" 设置显示匹配的括号
set showmatch

" 设置编码
set encoding=utf-8
set fileencoding=utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language message zh_CN.utf-8

" 设置打开文件类型检测
filetype on
filetype plugin on
filetype plugin indent on

" 设置backspace被占用时的更改设置
set backspace=2

" 设置colorscheme
syntax on 
syntax enable
set t_Co=256
colorscheme gruvbox
set termguicolors

" 插入模式下的快件操作
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>
"inoremap <C-a> <Esc>^a
"inoremap <C-e> <ESC>$a

" 设置leader
let mapleader="-"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>t :28sp<CR> :terminal<CR> <CTRL-w>J

" 设置菜单栏工具栏
set guioptions-=T " 禁用工具栏

" 设置状态栏 
set laststatus=2
set mouse=a
" 设置使用系统粘贴板
set clipboard=unnamedplus

" 插件管理
call plug#begin('D:\Program Files (x86)\neovim\share\plugged')
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
call plug#end()
