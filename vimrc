filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set number
set foldmethod=indent
set foldlevel=99
set nowrap
set hlsearch
set smartcase
set incsearch
set hidden
set nobackup
set noswapfile
set title
set history=1000
set undolevels=1000
set mouse=a
syntax on
filetype plugin indent on

map <leader>n :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

let mapleader = ","
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
nnoremap ; :
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim
