" ##############################################################################
" ### Author : Alessio Rocco <alessio.rocco.lt@gmail.com>                    ###
" ##############################################################################

" ==============================================================================
" 1.0 Plugin manager (Plug) settings
" ==============================================================================
"{{{

" Autoinstall {{{
if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall
endif
" }}}
call plug#begin('~/.config/nvim/plugged')

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.1 Plugin list
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" ------------------------------------------------------------------------------
" Common plugins {{{
" ------------------------------------------------------------------------------

" Defaults everyone can agree on
Plug 'tpope/vim-sensible'
" unimpaired.vim: pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" }}}

" ------------------------------------------------------------------------------
" File managers/explorers {{{
" ------------------------------------------------------------------------------

" Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
Plug 'ctrlpvim/ctrlp.vim'
" Automatically create any non-existent directories before writing the buffer
Plug 'pbrisbin/vim-mkdir'
" Rename the current file in the vim buffer + retain relative path
Plug 'danro/rename.vim'
" Vim plugin for the_silver_searcher (ag)
Plug 'rking/ag.vim'
" A tree explorer plugin for vim
Plug 'scrooloose/nerdtree'
" Ag wrapper (Unite grep alternative) search and edit
" Plug 'dyng/ctrlsf.vim'
" }}}

" -----------------------------------------------------------------------------
" UI {{{
" ------------------------------------------------------------------------------

" Lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'
" The fancy start screen for Vim
Plug 'mhinz/vim-startify'
" }}}

" ------------------------------------------------------------------------------
" Editing {{{
" ------------------------------------------------------------------------------

" commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'
" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'
" surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" Automatically closing pair stuff
Plug 'cohama/lexima.vim'
" Snippet support (C-j)
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" }}}

" ------------------------------------------------------------------------------
" Motions {{{
" ------------------------------------------------------------------------------

" extended % matching for HTML, LaTeX, and many other languages
Plug 'vim-scripts/matchit.zip'
" The missing motion for Vim
Plug 'justinmk/vim-sneak'
" Extended f, F, t and T key mappings for Vim
Plug 'rhysd/clever-f.vim'
" CamelCase and snake_case motions
Plug 'bkad/CamelCaseMotion'
"}}}

" ------------------------------------------------------------------------------
" Git {{{
" ------------------------------------------------------------------------------

" A Vim plugin which shows a git diff in the gutter (sign column)
Plug 'airblade/vim-gitgutter'
" fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
" GitHub extension for fugitive.vim
Plug 'tpope/vim-rhubarb'
" Git log viewer (Gitv! for file mode)
" Plug 'gregsexton/gitv', { 'on': 'Gitv' }
"}}}

" ------------------------------------------------------------------------------
" Tmux {{{
" ------------------------------------------------------------------------------

" vim plugin to interact with tmux
Plug 'benmills/vimux'
" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'
" Make terminal vim and tmux work better together
Plug 'tmux-plugins/vim-tmux-focus-events'
" Tmux statusline generator with support for powerline symbols and airline
Plug 'edkolev/tmuxline.vim'
" Vim plugin for tmux.conf
Plug 'tmux-plugins/vim-tmux'
" }}}

" ------------------------------------------------------------------------------
" Ruby/Rails {{{
" ------------------------------------------------------------------------------

" rails.vim: Ruby on Rails power tools
Plug 'tpope/vim-rails'
" bundler.vim: Lightweight support for Ruby's Bundler
Plug 'tpope/vim-bundler'
" rake.vim: it's like rails.vim without the rails
Plug 'tpope/vim-rake'
" " endwise.vim: wisely add 'end' in ruby, endfunction/endif/more in vim script
" Plug 'tpope/vim-endwise'
" Vim highlighting & completion for MiniTest
Plug 'sunaku/vim-ruby-minitest'
" A vim plugin for running your Ruby tests
Plug 'skalnik/vim-vroom'
" }}}

" ------------------------------------------------------------------------------
" Fish {{{
" ------------------------------------------------------------------------------

" Vim support for editing fish scripts
Plug 'dag/vim-fish'
" }}}

" ------------------------------------------------------------------------------
" Syntax {{{
" ------------------------------------------------------------------------------

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'
" }}}

" ------------------------------------------------------------------------------
" Themes {{{
" ------------------------------------------------------------------------------

" Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'
" }}}

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.2 End of plugin declaration
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#end()
" }}}

" ==============================================================================
" General Settings
" ==============================================================================
" See https://neovim.io/doc/user/vim_diff.html#nvim-option-defaults for
" neovim default options and https://github.com/tpope/vim-sensible for other
" already set options.
" ==============================================================================

" ------------------------------------------------------------------------------
" 1.0 Common  {{{
" ------------------------------------------------------------------------------
set clipboard+=unnamed            " Copy and Paste from the system clipboard
set hidden                        " Enables to switch between unsaved buffers and keep undo history
set autowrite                     " Automatically :write before running commands
set wildmode=list:longest,full    " Command Line configurations
set colorcolumn=80                " Highlight 80 column
let g:html_indent_tags = 'li\|p'  " Treat <li> and <p> tags like the block tags they are
set list listchars=tab:»·,trail:· " Display extra whitespace
set mouse=a
" }}}

" ------------------------------------------------------------------------------
" 1.1 Neovim specific settings {{{
" ------------------------------------------------------------------------------
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" }}}

" ------------------------------------------------------------------------------
" 1.2 Search settings {{{
" ------------------------------------------------------------------------------
set hlsearch               " Highlight all search pattern matches
set ignorecase             " Searching is not case sensitive
set smartcase              " Make search case sensitive only if it contains uppercase letters
" }}}

" ------------------------------------------------------------------------------
" 1.3 Split settings (more natural) {{{
" ------------------------------------------------------------------------------
set splitbelow             " Open new split panes to bottom, which feels more natural
set splitright             " Open new split panes to right, which feels more natural
" }}}

" ------------------------------------------------------------------------------
" 1.4 Backup {{{
" ------------------------------------------------------------------------------
set nobackup               " Don't let Vim to ever write a backup files
set nowritebackup
set noswapfile
" }}}

" ------------------------------------------------------------------------------
" 1.5 Line Numbers {{{
" ------------------------------------------------------------------------------
set number                 " Display line numbers
set numberwidth=5          " Change line numbers column width
" set relativenumber       " Display line numbers relative to the line with the cursor
" }}}

" ------------------------------------------------------------------------------
" 1.6 Colorschemes {{{
" ------------------------------------------------------------------------------
set background=dark        " Use gruvbox dark theme
colorscheme gruvbox        " Use gruvbox theme
" }}}

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.2 Plugin settings
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" ==============================================================================
" Airline
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0
" }}}

" ==============================================================================
" EditorConfig
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" }}}

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

" ==============================================================================
" Sneak
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
let g:sneak#streak = 1
" }}}

" ==============================================================================
" Ultisnips
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
let g:UltiSnipsUsePythonVersion=3
" }}}

" ------------------------------------------------------------------------------
" Keymaps " {{{
" ------------------------------------------------------------------------------
inoremap <C-x><C-k> <NOP>
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsListSnippets='<C-l>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'
" }}}

" ==============================================================================
" Vimux
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
let g:VimuxOrientation = "h"
let g:VimuxHeight = 40
" }}}

" ==============================================================================
" Vroom
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
let g:vroom_use_vimux = 1
let g:vroom_map_keys = 1
let g:vroom_use_binstubs = 1
" }}}

" ==============================================================================
" CamelCaseMotion
" ==============================================================================

" ------------------------------------------------------------------------------
" Configuration " {{{
" ------------------------------------------------------------------------------
" Use CamelCaseMotion instead of default motions
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
" }}}

" ==============================================================================
" Fugitive
" ==============================================================================

" ------------------------------------------------------------------------------
" Keymaps " {{{
" ------------------------------------------------------------------------------
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :Gbrowse<cr>
" }}}

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
nnoremap <silent> <A-Right> :call utils#intelligentVerticalResize('right')<cr>
nnoremap <silent> <A-Left> :call utils#intelligentVerticalResize('left')<cr>
nnoremap <silent> <A-Up> :resize +1<cr>
nnoremap <silent> <A-Down> :resize -1<cr>
" }}}
