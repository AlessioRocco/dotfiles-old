" ==============================================================================
" 4.0 Mapping settings
" ==============================================================================

" ------------------------------------------------------------------------------
" 4.1 Setting leader {{{
" ------------------------------------------------------------------------------
let g:mapleader = ","
" }}}

" ------------------------------------------------------------------------------
" 4.2 Vim defaults overriding {{{
" ------------------------------------------------------------------------------

inoremap jj <esc>

" Visual linewise up and down by default
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" When jump to next match also center screen
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz

" Don't yank to default register when changing something
nnoremap c "xc
xnoremap c "xc
" }}}

" ------------------------------------------------------------------------------
" 4.3 Common tasks {{{
" ------------------------------------------------------------------------------

" Switch between the last two buffers
nnoremap <leader><leader> <c-^>

" Reload vimrc
nnoremap <leader>vr :source $MYVIMRC<cr>

" Edit vimrc
nnoremap <leader>vv :tabedit $MYVIMRC<cr>

" Easier fold toggling
nnoremap ,z za

" Save
nnoremap <leader>w :write<cr>

" Quit
nnoremap <leader>q :quit<cr>

" Close current buffer

nnoremap <leader>d :bd<cr>
" Quit All

nnoremap <leader>Q :quitall<cr>

" Indent file
map <f7> gg=G
" }}}

" ------------------------------------------------------------------------------
" 3.6 Window / Buffer management {{{
" -----------------------------------------------------------------------------

" Split windows
map <leader>\| :vsplit<cr>
map <leader>- :split<cr>

" Intelligent windows resizing using ctrl + arrow keys
nnoremap <silent> <C-Right> :call utils#intelligentVerticalResize('right')<cr>
nnoremap <silent> <C-Left> :call utils#intelligentVerticalResize('left')<cr>
nnoremap <silent> <C-Up> :resize +1<cr>
nnoremap <silent> <C-Down> :resize -1<cr>
" }}}
