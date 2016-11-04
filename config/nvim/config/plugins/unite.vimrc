" ==============================================================================
" Unite
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
" Matcher settings
call unite#filters#matcher_default#use(['matcher_fuzzy', 'matcher_hide_current_file'])
call unite#filters#sorter_default#use(['sorter_rank'])

" Use ag if available
if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --line-numbers --nogroup -S -C0'
  let g:unite_source_grep_recursive_opt=''

  " Set rec source command
  let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
endif

" Custom profile
call unite#custom#profile('default', 'context', {
      \   'prompt': '» ',
      \   'winheight': 15,
      \ })

" Add syntax highlighting
let g:unite_source_line_enable_highlight=1

" Dont override status line
let g:unite_force_overwrite_statusline=0

" Tag source settings
let g:unite_source_tag_max_name_length=40
let g:unite_source_tag_max_fname_length=50
" }}}

" ------------------------------------------------------------------------------
" Keymaps " {{{
" ------------------------------------------------------------------------------
" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <silent> <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <silent> <buffer> <C-k> <Plug>(unite_select_previous_line)
  " Runs 'splits' action by <C-s> and <C-v>
  imap <silent> <buffer> <expr> <C-s> unite#do_action('split')
  imap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
  " Exit with escape
  nmap <silent> <buffer> <ESC> <Plug>(unite_exit)
  imap <silent> <buffer> <ESC> <Plug>(unite_exit)
  " Mark candidates
  vmap <silent> <buffer> m <Plug>(unite_toggle_mark_selected_candidates)
  nmap <silent> <buffer> m <Plug>(unite_toggle_mark_current_candidate)
endfunction

" Search files recursively ([o]pen file)
nnoremap <silent> <c-p> :call utils#uniteFileRec()<cr>
" Browse [f]iles in CWD
nnoremap <silent> <leader>f :call utils#uniteFileBrowse()<cr>
" [U]nite sources
nnoremap <silent> <leader>u :call utils#uniteSources()<cr>
" Search between open files - [b]uffers
nnoremap <silent> <c-t> :call utils#uniteBuffers()<cr>
" Search in current file ou[t]line (tags in current file)
nnoremap <silent> <leader>t :call utils#uniteTags()<cr>
" Search in [l]ines on current buffer
nnoremap <silent> <leader>l :call utils#uniteLineSearch()<cr>
" Search in [y]ank history
nnoremap <silent> <leader>y :call utils#uniteYankHistory()<cr>
" Search in [r]egisters
nnoremap <silent> <leader>r :call utils#uniteRegisters()<cr>
" Search in opened [w]indow splits
" nnoremap <silent> <leader>w :call utils#uniteWindows()<cr>
" Search in ultisnips [s]nippets
nnoremap <silent> <leader>hs :call utils#uniteSnippets()<cr>
" Search in latest [j]ump positions
nnoremap <silent> <leader>j :call utils#uniteJumps()<cr>
" Search in my custom unite [m]enu with my commands
nnoremap <silent> <leader>hh :call utils#uniteCustomMenu()<cr>
" Seach in help menu for commands
nnoremap <silent> <leader>hc :call utils#uniteCommands()<cr>
" Seach in help menu for mappings
nnoremap <silent> <leader>hm :call utils#uniteMappings()<cr>
" }}}
