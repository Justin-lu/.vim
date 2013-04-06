" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytrime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd   	 " Show (partial) command in status line.
"set showmatch   	 " Show matching brackets.
"set ignorecase   	 " Do case insensitive matching
"set smartcase   	 " Do smart case matching
"set incsearch   	 " Incremental search
"set autowrite   	 " Automatically save before commands like :next and :make
"set hidden         	" Hide buffers when they are abandoned
"set mouse=a   	 " Enable mouse usage (all modes)

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"<F2>打开NERDtree
map <F2> :NERDTreeToggle<CR>
"<F4>格式化js代码
nnoremap <F4> :call g:Jsbeautify()<CR>

"<F8>打开taglist
nnoremap <silent> <F8> :TlistToggle<CR>

"颜色方案
color molokai

set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8    
language message zh_CN.UTF-8
set helplang=cn   	 
set cursorline "高亮当前行
set ai
set nu
set ru
set expandtab
set tabstop=2
set shiftwidth=2
set guioptions-=m
set guioptions-=T  
set ignorecase 	"搜索不区分大小写
set foldopen=all
set hlsearch    	"高亮显示搜索
set incsearch    	"定位显示搜索字符
"设置工作目录为当前编辑文件的目录
set bsdir=buffer
set autochdir


" 设置右侧窗口显示Tlist
let Tlist_Use_Right_Window = 1 

:inoremap ( ()<ESC>i
:inoremap { {  }<ESC>i<LEFT>
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap < <><ESC>i

"自动加载js syntax
au FileType javascript call JavaScriptFold()

"自动加载jquery syntax
au BufRead,BufNewFile *.js set syntax=jquery
au BufRead,BufNewFile *.thor set syntax=ruby

" ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"加载Windows快捷键映射
source $VIMRUNTIME/mswin.vim	
behave mswin
