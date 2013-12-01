""""""""""""""""""""""""""""""""""""""
"  Must be first
""""""""""""""""""""""""""""""""""""""
set nocompatible
let mapleader = ","

""""""""""""""""""""""""""""""""""""""
"  Neobundle plugin management
""""""""""""""""""""""""""""""""""""""

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" ========== Github.com Bundles ==========
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'Valloric/ListToggle'
NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'beyondmarc/opengl.vim'
NeoBundle 'bingaman/vim-sparkup'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'nvie/vim-togglemouse'
NeoBundle 'paradigm/TextObjectify'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tikhomirov/vim-glsl'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-vividchalk'
NeoBundle 'vhdirk/vim-cmake'
NeoBundle 'wincent/Command-T'
NeoBundle 'xolox/vim-misc'
" NeoBundle 'xolox/vim-session'
" NeoBundle 'xolox/vim-shell'

" ========== Vim.org Bundles ==========
NeoBundle 'FuzzyFinder'
NeoBundle 'L9'
NeoBundle 'RelOps'
NeoBundle 'ScrollColors'
NeoBundle 'TaskList.vim'
NeoBundle 'closetag.vim'
NeoBundle 'ctags.vim'
NeoBundle 'mru.vim'

filetype plugin indent on

NeoBundleCheck

""""""""""""""""""""""""""""""""""""""
"  Vim settings
""""""""""""""""""""""""""""""""""""""

" ========== Spelling ==========
setlocal spelllang=nl "Geeft errors bij startup

" ========== Folding ==========
set foldmethod=syntax   "Folding based on syntax
set foldcolumn=3	"Reserve space on the left to show folding
set foldlevelstart=1	"Skip the first folding level
set foldnestmax=2	"Do not keep folding after 2.

" ========== Searching ==========
set hlsearch   " highlight searches
set ignorecase " make searches case-insensitive, unless they contain upper-case letters:
set smartcase  " Only use search case when first letter is case
set incsearch  " show the `best match so far' as search strings are typed:
set gdefault   " assume the /g flag on :s substitutions to replace all matches in a line:
set enc=utf-8  " UTF-8 Default encoding

" ========== Key Rebinds ==========
"---Disable F1 for help
noremap <F1> <Esc>	
"---Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
"---Braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
nnoremap ; :
"---Select all text
map <Leader>s ggVG
"---Zero not to the first char, but first word
map 0 ^
"---Quick save binding
nmap <Leader>w :w!<cr>
"---Prevent typing error when trying to save
command Wq wq
"---Append Semicolon and come back. In insert mode
inoremap <leader>' <C-o>m`<C-o>A;<C-o>``


" Colorscheme
colorscheme jellybeans
set t_Co=256
set term=xterm-256color
"set background=light
"let g:solarized_termcolors=256

set number
set nowrap

set hidden
set nobackup
set nowritebackup
set noswapfile
set title
set history=100
set undolevels=100
set mouse=a
set clipboard=unnamedplus
set pastetoggle=<F5>
set colorcolumn=80

syntax on

" set expandtab tabstop=8 shiftwidth=8
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

" Statusline
set laststatus=2


""""""""""""""""""""""""""""""""""""""
"  Plugin settings
""""""""""""""""""""""""""""""""""""""

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'

" Tagbar
nmap <F3> :TagbarOpenAutoClose<CR>
let g:tagbar_compact = 1
let g:tagbar_indent = 1

" TaskList
map <leader>v <Plug>TaskList

" NERDTree
set autochdir
let NERDTreeChDirMode=2
let g:nerdtree_tabs_open_on_gui_startup=0
map <F2> :NERDTreeTabsToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <Leader>n :tabnew<CR>

" Gundo
set undofile
set undodir=~/.vimundobackup
nnoremap <F4> :GundoToggle<CR>

" FuzzyFinder
map <Leader>f :FufFile<Esc>
"map <Leader>b :FufBuffer<Esc>
"map <Leader>c :FufTag<Esc>
"map <Leader>t :FufTaggedFile<Esc>

" MRU
map <Leader>h :MRU<CR>

" ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" Vim-Notes
let g:notes_directories = ['~/Dropbox/Notes']

" YCM
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_extra_conf.py'
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_allow_changing_updatetime = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
map <Leader>g :YcmCompleter GoToDefinition<CR>
map <Leader>d :YcmCompleter GoToDeclaration<CR>
