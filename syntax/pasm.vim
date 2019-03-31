" Vim syntax file
" Language: Parallel assembly format
" Maintainer: Luc Waeijen
" Latest Revision: 24-05-2016

if exists("b:current_syntax")
  finish
endif

"comments
syn match comment 			';[^|]*'      

" match arguments of instructions
syn match reg 				'r\(\(1[0-5]\)\|\(0\?[0-9]\)\)'	        contains=regnumber	
syn match in  				'in\(\(\[[0-3]\]\)\|\([0-3]\)\)' 	contains=portnumber
syn match out                           'out\(\(\[[0-3]\]\)\|\([0-3]\)\)'       contains=portnumber 
syn match type 				'BYTE\|HWORD\|WORD\|DWORD'
syn match number                        '\(+\|-\)\?\(0\(x\|b\)\)\?[0-9]\+'
syn match portnumber                    '[0-3]' 				contained
syn match regnumber                     '\(\(1[0-5]\)\|\([0-9]\)\)' 		contained

"sections
syn match section                       '\.text\|\.data'

" Instructions
syn keyword ins  nop

"LSU
syn keyword ins  sla sga 							
syn keyword ins  sli sgi 							
syn keyword ins  lla lga lli_sli lgi_sli lli_sgi lgi_sgi  			
syn keyword ins  lli lgi 							
syn keyword ins  lli_sla lgi_sla lla_sli lga_sli lli_sga lgi_sga lla_sgi lga_sgi
syn keyword ins  srm 								

"RF
syn keyword ins  lrm_srm 							
syn keyword ins  srm lrm
syn keyword ins  sra lra

"ALU
syn keyword ins  add add_se sub sub_se and nand or nor xor xnor neg cmov ecmov pass pass_se eq neq ltu lts geu ges shll1 shll4 shrl1 shrl4 shra1 shra4

"Imm
syn keyword ins  nopi imm

"ABU
syn keyword ins  jr ha bcr bca
syn keyword ins  srm lrm accu accs
syn keyword ins  jri jai bcri bcai

"MUL
syn keyword ins  mullu mulls mulu muls lh




let b:current_syntax = "pasm"

hi def link ins         Keyword	
hi def link reg         Special
hi def link type        Type
hi def link in          Special
hi def link out         Special
hi def link number      Number
hi def link comment     Comment
hi def link section     Comment 
hi def link portnumber  Identifier 
hi def link regnumber   Identifier
