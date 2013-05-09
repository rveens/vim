" ~/.vim/sessions/woningconf.vim: Vim session script.
" Created by session.vim 1.5 on 08 May 2013 at 12:31:59.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'jellybeans' | colorscheme jellybeans | endif
call setqflist([{'lnum': 1, 'col': 72, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/home/rick/Documents/Woningconfigurator/js/views/choosehouselayoutstepview.js', 'text': 'define([''backbone'',''underscore'', ''collections/houses'', ''text!templates/choosehouselayoutstep.html''],'}, {'lnum': 2, 'col': 31, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/home/rick/Documents/Woningconfigurator/js/views/choosehouselayoutstepview.js', 'text': 'function(Backbone, _, Houses, ChooseHouseLayoutStepTemplate)'}, {'lnum': 6, 'col': 24, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': '/home/rick/Documents/Woningconfigurator/js/views/choosehouselayoutstepview.js', 'text': '		template: _.template(ChooseHouseLayoutStepTemplate),'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Woningconfigurator/js/templates
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +4 ~/Documents/Woningconfigurator/js/templates/choosehousestep.html
badd +19 ~/Documents/Woningconfigurator/js/views/choosehousestepview.js
badd +1 ~/Documents/Woningconfigurator/js/views/choosehousetypestepview.js
badd +1 ~/Documents/Woningconfigurator/js/models/house.js
badd +9 ~/Documents/Woningconfigurator/js/templates/choosehousetypestep.html
silent! argdel *
set lines=36 columns=168
edit ~/Documents/Woningconfigurator/js/templates/choosehousestep.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 16 + 18) / 36)
exe 'vert 1resize ' . ((&columns * 84 + 84) / 168)
exe '2resize ' . ((&lines * 16 + 18) / 36)
exe 'vert 2resize ' . ((&columns * 84 + 84) / 168)
exe 'vert 3resize ' . ((&columns * 83 + 84) / 168)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 4 - ((3 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 031|
wincmd w
argglobal
edit ~/Documents/Woningconfigurator/js/models/house.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 8 - ((7 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 016|
wincmd w
argglobal
edit ~/Documents/Woningconfigurator/js/views/choosehousestepview.js
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 19 - ((17 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 047|
wincmd w
exe '1resize ' . ((&lines * 16 + 18) / 36)
exe 'vert 1resize ' . ((&columns * 84 + 84) / 168)
exe '2resize ' . ((&lines * 16 + 18) / 36)
exe 'vert 2resize ' . ((&columns * 84 + 84) / 168)
exe 'vert 3resize ' . ((&columns * 83 + 84) / 168)
tabedit ~/Documents/Woningconfigurator/js/views/choosehousetypestepview.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=10
setlocal nofen
let s:l = 20 - ((18 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 049|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w

" vim: ft=vim ro nowrap smc=128
