filetype off

"Pathogen
call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"Map leader, should be first.
let mapleader = ","

"Moving code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" I can type :help on my own, thanks.
noremap <F1> <Esc>

"Folding
set foldmethod=syntax
set foldlevel=1
set foldnestmax=10
set nofoldenable

"Spelling
setlocal spell spelllang=nl "Geeft errors bij startup

"Scrolling
set scrolloff=8 	" Number of lines from vertical edge to start scrolling
set sidescrolloff=15 	" Number of cols from horizontal edge to start scrolling
set sidescroll=1 	" Number of cols to scroll at a time

"Nu ga ik hardcore
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

"eclim
let g:EclimCompletionMethod = 'omnifunc'

"vim-Notes
let g:notes_directory='~/Dropbox/Notes'
let g:notes_title_sync='rename_file'

"Case insensitive search
set ignorecase
set smartcase

"Colorscheme
"colo xoria256
colorscheme solarized
set background=light
set t_Co=256
set term=xterm-256color
let g:solarized_termcolors=256

"Vim-session
let g:session_autosave = 1
let g:session_autoload = 0

"Help off
noremap <F1> <Esc>

"Select all text
map <Leader>s ggVG

set number
set cursorline
set nowrap
set hlsearch
set incsearch
set hidden
set nobackup
set nowritebackup
set noswapfile
set title
set history=1000
set undolevels=1000
set mouse=a
set clipboard=unnamed
set pastetoggle=<F5>
set colorcolumn=80

inoremap jk <esc>
map 0 ^
nmap ,w :w!<cr>

syntax on
filetype plugin indent on
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
set ofu=syntaxcomplete#Complete

"Bij python files
autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2

"Append Semicolon and come back
inoremap <leader>' <C-o>m`<C-o>A;<C-o>``

"Remove highlight after search
noremap <Leader>n :nohl<CR>

"Tagbar
nmap <F3> :TagbarOpenAutoClose<CR>

"TaskList
map <leader>v <Plug>TaskList

"NERDTree
set autochdir
let NERDTreeChDirMode=2
map <F2> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

" Multiple Cursors
"let g:multi_cursor_next_key="\<C-m>"

"Gundo
set undofile
nnoremap <F4> :GundoToggle<CR>

"Powerline
let g:Powerline_symbols = 'fancy'

"PDF
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

"FuzzyFinder
map <Leader>f :FufFile<Esc>
"map <Leader>b :FufBuffer<Esc>
"map <Leader>c :FufTag<Esc>
"map <Leader>t :FufTaggedFile<Esc>

" Ctrl-Space for completions. Heck Yeah!
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
	    \ "\<lt>C-n>" :
	    \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
	    \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
	    \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

"MRU
map <Leader>r :MRU<CR>

"YCM
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_cache_omnifunc = 0

"ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

let g:ycm_allow_changing_updatetime = 0

" Y hetzelfde als andere hoofdletters
map Y y$

"Promt for a command to run
map <Leader>rp <esc>:PromptVimTmuxCommand<CR>
"Run last command executed bt RunVimTmuxCommand
map <Leader>rl <esc>:RunLastVimTmuxCommand<CR>

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
