""""""""""""""""""""""""""""""""""""""
"  Must be first
""""""""""""""""""""""""""""""""""""""
set nocompatible
let mapleader = ","

""""""""""""""""""""""""""""""""""""""
"  Neobundle plugin management
""""""""""""""""""""""""""""""""""""""
if has('vim_starting')
	set runtimepath+=$HOME/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('$HOME/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

" ========== Github.com Bundles ==========
NeoBundle "octol/vim-cpp-enhanced-highlight"
NeoBundle "vimoutliner/vimoutliner"
NeoBundle 'Raimondi/delimitMate'
" NeoBundle 'Shougo/unite.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'Valloric/ListToggle'
NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'Valloric/YouCompleteMe', {
\ 	 'build' : {
\ 		 'unix' : './install.sh --clang-completer',
\ 	 },
\ }
NeoBundle 'beyondmarc/opengl.vim'
NeoBundle 'bingaman/vim-sparkup'
NeoBundle 'kana/vim-textobj-function'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'nvie/vim-togglemouse'
NeoBundle 'paradigm/TextObjectify'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tikhomirov/vim-glsl'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-vividchalk'
NeoBundle 'vhdirk/vim-cmake'
NeoBundle 'vim-scripts/argtextobj.vim'
NeoBundle 'wincent/Command-T', {
\ 	 'build' : {
\ 		 'unix' : 'cd ruby/command-t && ruby extconf.rb && make',
\ 	 },
\ }
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
NeoBundle 'b4winckler/vim-angry'
NeoBundle 'Shougo/neocomplete.vim' 
NeoBundle 'LaTeX-Box-Team/LaTeX-Box'

" ========== Vim.org Bundles ==========
NeoBundle 'L9'
NeoBundle 'RelOps'
NeoBundle 'ScrollColors'
NeoBundle 'TaskList.vim'
NeoBundle 'closetag.vim'
NeoBundle 'ctags.vim'
NeoBundle 'vim-scripts/FuzzyFinder'
NeoBundle 'vim-scripts/a.vim'
NeoBundle 'vim-scripts/xoria256.vim'

filetype plugin indent on

NeoBundleCheck

""""""""""""""""""""""""""""""""""""""
"  Vim settings
""""""""""""""""""""""""""""""""""""""

" ========== General Settings ==========
set mouse=a			"Enable mouse in all modes
set clipboard=unnamedplus	"Use +p or +y for system clipboard
set wildmenu			"Commandline completion
set wildmode=longest,list	"Completion like bash
set autochdir			"Change current working directory when a file is opened
set showmatch			"Jump to matching character if a [ or { i inserted

" ========== Appearance ==========
set ttyfast		"Tell vim we have a fast terminal
set lazyredraw		"Do not redraw while executing macros
set number		"Show line numbers
set nowrap		"Do not wrap lines
syntax on		"Turn on syntax highlighting
set title		"View filename in title bar
set colorcolumn=80	"View a column bar at 80 characters
set laststatus=2	"Always turn on a status line
set showcmd		"Show (movement) commands u type in the bottom right
set cursorline		"Highlight line of cursor
"---Colorscheme
set t_Co=256		"Tell vim how many colors the terminal has
colorscheme xoria256
syntax sync minlines=256
"---GVim
set guitablabel=%t

" ========== Folding ==========
" set foldmethod=syntax "Folding based on syntax
" set foldcolumn=3	"Reserve space on the left to show folding
" set foldlevelstart=1	"Skip the first folding level
" set foldnestmax=2	"Do not keep folding after 2.

" ========== Searching ==========
set ignorecase " make searches case-insensitive, unless they contain upper-case letters:
set smartcase  " Only use search case when first letter is case
set incsearch  " show the `best match so far' as search strings are typed:
set gdefault   " assume the /g flag on :s substitutions to replace all matches in a line:
set enc=utf-8  " UTF-8 Default encoding

" ========== Spelling ==========
setlocal spelllang=nl "Geeft errors bij startup

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
"---Remap ; to :
nnoremap ; :
"---Also remap <space> to :
noremap <space> :
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
"---Keybinds for navigating and creating tabs
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <Leader>n :tabnew<CR>

" ========== Backup Settings ==========
set nobackup			"Do not write backup files next to file (and do not leave it around)
set nowritebackup		"Do attempt to leave a temp backup when overwriting
set noswapfile			"Do not write swap files next to file
set undodir=$HOME/.vimundobackup	"vim undo directory
set undofile			"Turn on undo fom previous vim session
set undolevels=100		"Undo level history
set history=100			"Command line history
set hidden			"Remember buffers when you switch

" ========= Autocommands =========
" set expandtab tabstop=8 shiftwidth=8
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

""""""""""""""""""""""""""""""""""""""
"  Plugin settings
""""""""""""""""""""""""""""""""""""""

" A.vim
map <leader>a :A<CR>

" Command-t
map <leader>t :CommandT<CR>

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
let NERDTreeChDirMode=2
let g:nerdtree_tabs_open_on_gui_startup=0
map <F2> :NERDTreeTabsToggle<CR>

" Gundo
nnoremap <F4> :GundoToggle<CR>

" FuzzyFinder
map <Leader>f :FufFile<Esc>
let g:fuf_modesDisable = []
map <Leader>h :FufMruFile<CR>

" ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" Vim-Notes
let g:notes_directories = ['$HOME/Dropbox/Notes']

" Vim-Session
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" YCM
let g:ycm_global_ycm_extra_conf = '$HOME/.vim/.ycm_global_extra_conf.py'
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_allow_changing_updatetime = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
map <Leader>g :YcmCompleter GoToDefinition<CR>
map <Leader>d :YcmCompleter GoToDeclaration<CR>
