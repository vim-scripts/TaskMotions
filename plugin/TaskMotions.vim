" TaskMotions.vim: Motions to task and TODO markers.
"
" DEPENDENCIES:
"   - CountJump/Motion.vim autoload script
"
" Copyright: (C) 2012 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"   1.00.001	28-Mar-2012	Allow remapping.
"	001	19-Mar-2012	file creation

" Avoid installing twice or when in unsupported Vim version.
if exists('g:loaded_TaskMotions') || (v:version < 700)
    finish
endif
let g:loaded_TaskMotions = 1

"- configuration ---------------------------------------------------------------

if ! exists('g:TaskMotions_Pattern')
    let g:TaskMotions_Pattern =  '\C\<\%(FIXME\|TODO\|XXX\)\>'
endif

if ! exists('g:TaskMotions_Mapping')
    let g:TaskMotions_Mapping = 't'
endif


"- mappings --------------------------------------------------------------------

call CountJump#Motion#MakeBracketMotion('', g:TaskMotions_Mapping, '', g:TaskMotions_Pattern, '', 0)

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
