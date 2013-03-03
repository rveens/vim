filetype off

"Pathogen
call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Map leader, should be first.
let mapleader = ","

"Folding
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
set nofoldenable

"Case insensitive search
set smartcase
set ignorecase

"Colorscheme
colorscheme solarized
set background=dark
set t_Co=256
set term=xterm-256color
let g:solarized_termcolors=256

"Vim-session
let g:session_autosave = 1
let g:session_autoload = 0

set number
set nowrap
set hlsearch
set incsearch
set hidden
set nobackup
set noswapfile
set title
set history=1000
set undolevels=1000
set mouse=a
set clipboard=unnamed
set pastetoggle=<F5>
set colorcolumn=80
highlight Colorcolumn ctermbg=2

syntax on
filetype plugin indent on

"Bij python files
autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2

"NeoComplCache
let g:neocomplcache_enable_at_startup = 1

"Tagbar
nmap <F3> :TagbarOpenAutoClose<CR>

"NERDTree
map <F2> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

"Gundo
nnoremap <F4> :GundoToggle<CR>

"Powerline
let g:Powerline_symbols = 'fancy'

"FuzzyFinder
map <Leader>f :FufFile<Esc>
"map <Leader>b :FufBuffer<Esc>
"map <Leader>c :FufTag<Esc>
"map <Leader>t :FufTaggedFile<Esc>

"Promt for a command to run
map <Leader>rp <esc>:PromptVimTmuxCommand<CR>
"Run last command executed bt RunVimTmuxCommand
map <Leader>rl <esc>:RunLastVimTmuxCommand<CR>

"Moving tabs with leader-n and leader-m
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

set laststatus=2
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
nnoremap ; :
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

