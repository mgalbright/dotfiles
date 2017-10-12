"quick vim cheat sheet:
"  go to end, beginning of line:   $  ,  ^
"  Move left/right faster: shift + left/right arrow
"  undo, redo:  u  ,  Ctrl+R
"
"  yy copy line (yank), dd cut line (delete), P paste before cursor, p after
"  v to start select text, V to select line. After select, can copy y or cut d.
"
"  comment code:     ,cc            (via nerdcommenter plugin)
"  uncomment code:   ,cu
"  in/outdent code:  >>  ,  <<      (for selected lines)
"
"  search for term C++ from command mode:   :/C++
"  step forward, backward through matches:  n   ,  N
"  clear search highlights:                 Enter Enter    (enabled through remapping below)
"
"  open/close nerdtree file browser:  Ctrl+o
"  move up directories (towards home) in nerdtree browser:  u
"  show hidden files in nerdtree:  Shift+i
"  open/close nerdtree help:  ?
"  open file in current tab:  o
"  open file in new tab:      t
"  switch tabs:               gt
"
"
""
"IMPORTANT NOTE: install Vundle package manager, then it will read this .vimrc
" file and install the packages specified in the file.
"
"To reinstall packages (with Vundle) or update vim settings:
"1) open vim and go to command mode and type (: is not typed below)
"    :source ~/.vimrc
"2) From the command mode, tell Vundle to reinstall all packages:
"    :PluginInstall
"
"Note: Code between dashed lines below installs packages with Vundle package manager
"-----------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}


"Note: my custom plugins:
"Note: Install nerdtree filebrowser. Open file browser with Ctrl+o
Plugin 'scrooloose/nerdtree'

"Note: install nerdcommenter to comment blocks of code.
"Comment code with ,cc   uncomment with ,cu
Plugin 'scrooloose/nerdcommenter'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"Note: instructions for Vundle package manager below:

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line:
" ----------------------------------------------------------------------------

"Note: other nice settings for vim:

set number        "turn on line numbers
set mouse=a       "turn on mouse support
set tabstop=2     "tab size = 2 spaces
set shiftwidth=2  "can indent by 2 with >> or << in command mode
syntax on         "recognize syntax by filetype
filetype plugin indent on    "smarter indenting 
colorscheme desert         "nicer colors
set incsearch              "incremental search
set ignorecase smartcase   "search is case independent

set hlsearch      "highlight words in search
"Clear search highlight by pressing Enter Enter
nnoremap <enter> :noh<enter><enter>

set autochdir     "current working dir defaults to that of open file
"set colorcolumn=80 "colored column at 80 for width
set autoindent    "auto indenting for programing
set smartindent
set ruler         "show column number
set backspace=indent,eol,start  "fix delete key problems in vim on mac
set clipboard=unnamed    "Copy/paste works with the clipboard outside vim

"Start Nerdtree file browser with ctrl+o
map <C-o> :NERDTreeToggle <CR>

"Change the <Leader> key from backslash to ,
"can google 'vim <Leader>' to learn more. With this leader
"key, comment code with  ,cc  and uncomment with ,cu
let mapleader=","
set timeout timeoutlen=1500

