" ~/dotfiles/vim/.vim/sessions/opengl.vim:
" Vim session script.
" Created by session.vim 2.4.9 on 29 december 2013 at 12:17:04.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'jellybeans' | colorscheme jellybeans | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documenten/sb6code/src/A_probeersels
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Documenten/sb6code/src/A_probeersels/A_probeersels.cpp
badd +2958 ~/Documenten/sb6code/bin/media/objects/aap2.obj
badd +72 ~/Documenten/sb6code/include/sb6.h
badd +31 ~/Documenten/sb6code/src/.ycm_extra_conf.py
badd +93 ~/.vimrc
badd +63 ~/Documenten/sb6code/include/vmath.h
badd +1 ~/Documenten/sb6code/src/A_probeersels/vertex.glsl
badd +1 ~/Documenten/sb6code/src/A_probeersels/fragment.glsl
silent! argdel *
edit ~/Documenten/sb6code/src/A_probeersels/A_probeersels.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 155 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 59)
exe 'vert 2resize ' . ((&columns * 71 + 113) / 227)
exe '3resize ' . ((&lines * 29 + 29) / 59)
exe 'vert 3resize ' . ((&columns * 71 + 113) / 227)
" argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=2
setlocal fen
23
silent! normal! zo
156
silent! normal! zo
288
silent! normal! zo
335
silent! normal! zo
let s:l = 259 - ((32 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
259
normal! 01|
wincmd w
" argglobal
edit ~/Documenten/sb6code/src/A_probeersels/vertex.glsl
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=2
setlocal fen
let s:l = 8 - ((7 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
" argglobal
edit ~/Documenten/sb6code/src/A_probeersels/fragment.glsl
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=2
setlocal fen
let s:l = 17 - ((16 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 155 + 113) / 227)
exe '2resize ' . ((&lines * 27 + 29) / 59)
exe 'vert 2resize ' . ((&columns * 71 + 113) / 227)
exe '3resize ' . ((&lines * 29 + 29) / 59)
exe 'vert 3resize ' . ((&columns * 71 + 113) / 227)
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

tabnext 1
1wincmd w
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
