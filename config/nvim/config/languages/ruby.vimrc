" ==============================================================================
" Ruby
" ==============================================================================

" enable ruby omnicomplete
" "omnifunc=rubycomplete#Complete is set by rails.vim
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1

" Add pry to debug
nnoremap <Leader>bp obinding.pry<esc>:w<cr>
nnoremap <Leader>bP Obinding.pry<esc>:w<cr>
