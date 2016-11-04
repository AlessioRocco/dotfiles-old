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
