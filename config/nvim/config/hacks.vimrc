" ==============================================================================
" Hacks
" ==============================================================================

" This is a (hopefully) temporary workaround for neovim#2048.
if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autogroups {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup configgroup
  autocmd!
augroup END