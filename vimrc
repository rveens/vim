filetype off

" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Map leader, should be first.
let mapleader = ","

set nocompatible " Eclim
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
set clipboard=unnamed
set pastetoggle=<F3>
set colorcolumn=80
highlight Colorcolumn ctermbg=2

syntax on
filetype plugin indent on

" Tagbar
nmap <F3> :TagbarOpenAutoClose<CR>

" NERDTree
map <F2> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

" FuzzyFinder
map <Leader>f :FufFile<Esc>
map <Leader>b :FufBuffer<Esc>
map <Leader>c :FufTag<Esc>
map <Leader>t :FufTaggedFile<Esc>

" Moving tabs with leader-n and leader-m
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

let g:Powerline_symbols = 'fancy'
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
nnoremap ; :
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim
