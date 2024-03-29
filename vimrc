set nocompatible              " be iMproved, required 
filetype off

" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here') let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.  
" Keep Plugin commands between vundle#begin/end. 
" 
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
"


" The following are the plugins I added 
" nerdtree
Plugin 'preservim/nerdtree'

" cool status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim + tmux 
" Plugin 'christoomey/vim-tmux-navigator'

" R 
Plugin 'jalvesaq/Nvim-R'

" mainly for python
Plugin 'jalvesaq/vimcmdline'
" note: \s to start

" Database
Plugin 'tpope/vim-dadbod'

" Copilot
Plugin 'github/copilot.vim'

" grammar check 
Plugin 'rhysd/vim-grammarous'

" All of your Plugins must be added before the following line
call vundle#end()
" required

" filetype plugin indent on    
" required To ignore plugin indent changes,
"instead use:
filetype plugin on

"" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" show number line
set number

" visualize error sound
set visualbell

"stop automatically move cursor to highlight bracket
set noshowmatch

" autocomplete brackets
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
" inoremap " ""<Left> 
" inoremap ' ''<Left>

" always show status line
set laststatus=2

" ignore case when searching
set ignorecase

" indent set smartindent

" hightlight cursor location set cursorcolumn
set cursorline

" spell check
" set spell

"2 spaces for a tab"
set tabstop=2
set shiftwidth=2
" convert tab to space
set expandtab

" disable python recommended style (that force tab to 4 spaces) let
" g:python_recommended_style = 0

" highlight matching bracket
set showmatch

" disable search highlight
set nohlsearch

" color
syntax on 
colorscheme gruvbox
set bg=dark

" delete
set backspace=indent,eol,start

"" NerdTree
let NERDTreeWinSize=20

"
" Automatically open nerdtree autocmd vimenter * NERDTree Close nerdtree if
" the only window left is nerdtree autocmd bufenter * if (winnr("$") == 1 &&
" exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif nto for opening
" nerdtree command! Nto NERDTree   "note:  ! to change the existing command
" ntc for closing nerdtree command! Ntc NERDTreeClose


"" Nvim -R
let R_assign = 0
let R_rconsole_width = 65
let R_min_editor_width = 18

" my cheat sheet Ctrl + w + w : switch windows within tab (useful for
" nerdtree) (Terminal feature) Cmd + n : switch to nth tab 

" to keep vim colorscheme in tmux
set background=dark 
set t_Co=256

" using the clipboard as the default register for copy and paste
set clipboard=unnamed

" enable filetype detection
filetype plugin indent on

set colorcolumn=80

" airlinr (powerline)
let g:airline_theme='fruit_punch'

" when opening vim, format the texts Replace * with .tex if you want to apply
" this only on .tex file
" autocmd VimEnter *.tex normal gggwG 
"
" cmdlines
let cmdline_vsplit = 1
let cmdline_term_width = 80

"  nerdtree
" Start NERDTree and put the cursor back in the other window 
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" vim-dadbod
let g:db = "mysql://root:@localhost/sakila"

" grammoarous path to the language tool
let g:grammarous#jar_url = 'https://www.languagetool.org/download/LanguageTool-5.9.zip'


