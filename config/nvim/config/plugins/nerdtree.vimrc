" ==============================================================================
" NerdTree
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
let g:NERDTreeIgnore=['\.rbc$', '\~$']
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowHidden=1
let g:NERDTreeRespectWildIgnore=1
" }}}

" ------------------------------------------------------------------------------
" Keymaps " {{{
" ------------------------------------------------------------------------------
nnoremap <F2> :NERDTreeToggle<cr>
" }}}