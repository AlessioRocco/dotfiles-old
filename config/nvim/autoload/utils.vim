" ==============================================================================
" Utils Functions
" ==============================================================================

function! utils#intelligentVerticalResize(direction)
  let window_resize_count = 5
  let current_window_is_last_window = (winnr() == winnr("$"))

  if (a:direction == 'left')
    let [modifier_1, modifier_2] = ['+', '-']
  else
    let [modifier_1, modifier_2] = ['-', '+']
  endif

  let modifier = current_window_is_last_window ? modifier_1 : modifier_2
  let command = 'vertical resize ' . modifier . window_resize_count . '<CR>'
  execute command
endfunction

" }}}
