""""""""""""""""""""""""""""""""""""""
"  Must be first
""""""""""""""""""""""""""""""""""""""
if &compatible
	set nocompatible
endif
let mapleader = ","

" ===================================
"  	Vundle plugin management
call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'

" ========== Plugins Start ==========

Plug 'vim-scripts/L9'
Plug 'Raimondi/delimitMate'
Plug 'vim-scripts/ScrollColors'
Plug 'SirVer/ultisnips'
Plug 'Valloric/ListToggle'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/vim-easy-align'
Plug 'mileszs/ack.vim'
Plug 'oplatek/Conque-Shell'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/a.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" Plug 'Valloric/YouCompleteMe'
" Plug 'rdnetto/YCM-Generator'
Plug 'vim-scripts/xoria256.vim'
Plug 'tpope/vim-vividchalk'
Plug 'nanotech/jellybeans.vim'
Plug 'b4winckler/vim-angry'
Plug 'majutsushi/tagbar'
" Plug 'python-mode/python-mode'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'zxqfl/tabnine-vim'
Plug 'prabirshrestha/async.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" ========== ??? ==========
" Plug 'vim-scripts/FuzzyFinder'
" 'terryma/vim-multiple-cursors'
" 'ctags.vim'

" ========== Plugins End ==========
call plug#end()

let g:deoplete#enable_at_startup = 1

" ========== Vim.org Bundles ==========

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""
"  Vim settings
""""""""""""""""""""""""""""""""""""""

" ========== General Settings ==========
set mouse=a			"Enable mouse in all modes
set clipboard=unnamedplus	"Use +p or +y for system clipboard
set wildmenu			"Commandline completion
set wildmode=longest,list	"Completion like bash
" set autochdir			"Change current working directory when a file is opened
set showmatch			"Jump to matching character if a [ or { i inserted
set path+=**			"Tab completion

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
set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab
set wildmenu 	"Show matching files when tab complete
"---Colorscheme
set t_Co=256		"Tell vim how many colors the terminal has
try " Surround in try-catch as it gives an error without plugins
	colorscheme xoria256
catch
endtry
syntax sync minlines=256

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
"---Braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
"---Also remap <space> to :
noremap <space> :
"---Select all text
map <Leader>s ggVG
"---Zero not to the first char, but first word
map 0 ^
"---Quick save binding
nmap <Leader>w :w!<cr>
"---Append Semicolon and come back. In insert mode
inoremap <leader>' <C-o>m`<C-o>A;<C-o>``
"---Keybinds for navigating and creating tabs
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <Leader>n :tabnew<CR>
"--- edit vimrc quickly
map <Leader>v :e $MYVIMRC<CR>
"--- terminal
map <C-w>t :terminal<CR>
"--- tabname small
set guitablabel=\[%N\]\ %t\ %M 

"-- for exiting insert mode without problems
inoremap <C-c> <C-[>

"--copy current file location to 
nmap ,cl :let @+=expand("%:p")<CR>
nmap ,ct :let @+=expand("%:t")<CR>

"-- clipboard after exit
autocmd VimLeave * call system("echo -n $'" . escape(getreg(), "'") . "' | xsel -ib")

" ========== Visual Mode related ==========
"-- Visual mode pressing * searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>

" ========== Backup Settings ==========
set nobackup			"Do not write backup files next to file (and do not leave it around)
set nowritebackup		"Do attempt to leave a temp backup when overwriting
set noswapfile			"Do not write swap files next to file
set undodir=$HOME/.vimundobackup	"vim undo directory
set undofile			"Turn on undo fom previous vim session
set undolevels=100		"Undo level history
set history=100			"Command line history
set hidden				"Remember buffers when you switch

""""""""""""""""""""""""""""""""""""""
"  Plugin settings
""""""""""""""""""""""""""""""""""""""

" A.vim
map <leader>a :A<CR>

" Syntastic
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_enable_signs=1
" let g:syntastic_error_symbol = '✗'
" let g:syntastic_warning_symbol = '⚠'
" let g:syntastic_alf_checkers = ['sweet']
" let g:syntastic_alf_sweet_exec = '/home/rick/afst/preparation/tools/sweet/build/src/sweet'

" Fugitive
nnoremap <silent> ,gs :Gstatus<CR>
nnoremap <silent> ,gc :Gcommit<CR>
nnoremap <silent> ,gd :Gdiff<CR>

" Tagbar
nmap <F3> :TagbarOpenAutoClose<CR>
let g:tagbar_compact = 1
let g:tagbar_indent = 1

" NERDTree
let NERDTreeChDirMode=2
let NERDTreeHijackNetrw=1
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeIgnore = ['\.o$', 'tags']
map <F2> :NERDTreeFind<CR>

" FZF
map <Leader>d :Rg<Esc>
map <Leader>f :BLines<Esc>
map <Leader>h :History<Esc>
map <C-p> :Files<Esc>
map <Leader>t :Tags<Esc>
map <Leader>t :Tags<Esc>
map <Leader>gl :Commits<Esc>
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
" let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Gundo
nnoremap <F4> :GundoToggle<CR>

" Vim-easy-align
"  Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

"  Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" Vim-Session
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" Vim-Notes
let g:notes_directories = ['~/dropbox/Notes']
let $VIM_NOTES_TEMPLATE = '~/.vim/note_template.txt' 

" Vim-lsp
if executable('cquery')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'cquery',
      \ 'cmd': {server_info->['cquery']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'build/compile_commands.json'))},
      \ 'initialization_options': { 'cacheDirectory': '/tmp/cquery/cache' },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

" LanguageClient-neovim
let g:LanguageClient_serverCommands = {
\ 'cpp': ['/usr/bin/cquery', 
\ '--log-file=/tmp/cq.log', 
\ '--init={"cacheDirectory":"/tmp/cquery/"}']                                                                                                                                                                              
\ }

nnoremap <silent> ,fs :call LanguageClient_workspace_symbol()<cr>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> ,rn :call LanguageClient#textDocument_rename()<CR>

""""""""""""""""""""""""""""""""""""""
"  Helper functions
""""""""""""""""""""""""""""""""""""""

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ag '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
