if &compatible
  set nocompatible
end

call plug#begin('~/.vim/bundle')

Plug 'tpope/vim-sensible'                    " Defaults everyone can agree on
Plug 'ctrlpvim/ctrlp.vim'                    " Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
Plug 'rking/ag.vim'                          " Vim plugin for the_silver_searcher (ag)
Plug 'scrooloose/nerdtree'                   " A tree explorer plugin for vim
Plug 'bling/vim-airline'                     " Lean & mean status/tabline for vim that's light as air
Plug 'tpope/vim-commentary'                  " commentary.vim: comment stuff out
Plug 'editorconfig/editorconfig-vim'         " EditorConfig plugin for Vim
Plug 'tpope/vim-surround'                    " surround.vim: quoting/parenthesizing made simple
Plug 'cohama/lexima.vim'                     " Automatically closing pair stuff
Plug 'vim-scripts/matchit.zip'               " extended % matching for HTML, LaTeX, and many other languages
Plug 'airblade/vim-gitgutter'                " A Vim plugin which shows a git diff in the gutter (sign column)
Plug 'tpope/vim-fugitive'                    " fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-rhubarb'                     " GitHub extension for fugitive.vim
Plug 'benmills/vimux'                        " vim plugin to interact with tmux
Plug 'christoomey/vim-tmux-navigator'        " Seamless navigation between tmux panes and vim splits
Plug 'tmux-plugins/vim-tmux-focus-events'    " Make terminal vim and tmux work better together
Plug 'edkolev/tmuxline.vim'                  " Tmux statusline generator with support for powerline symbols and airline
Plug 'tmux-plugins/vim-tmux'                 " Vim plugin for tmux.conf
Plug 'dag/vim-fish'                          " Vim support for editing fish scripts
Plug 'sheerun/vim-polyglot'                  " A solid language pack for Vim.
Plug 'morhetz/gruvbox'                       " Retro groove color scheme for Vim

call plug#end()

let g:mapleader = ","
set clipboard+=unnamed            " Copy and Paste from the system clipboard
set hidden                        " Enables to switch between unsaved buffers and keep undo history
set autowrite                     " Automatically :write before running commands
set wildmode=list:longest,full    " Command Line configurations
set colorcolumn=80                " Highlight 80 column
let g:html_indent_tags = 'li\|p'  " Treat <li> and <p> tags like the block tags they are
set list listchars=tab:»·,trail:· " Display extra whitespace
set mouse=a
set hlsearch                      " Highlight all search pattern matches
set ignorecase                    " Searching is not case sensitive
set smartcase                     " Make search case sensitive only if it contains uppercase letters
set splitbelow                    " Open new split panes to bottom, which feels more natural
set splitright                    " Open new split panes to right, which feels more natural
set nobackup                      " Don't let Vim to ever write a backup files
set nowritebackup
set noswapfile
set number                        " Display line numbers
set numberwidth=5                 " Change line numbers column width
set background=dark               " Use gruvbox dark theme
colorscheme gruvbox               " Use gruvbox theme

"" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0

" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" NerdTree
let g:NERDTreeIgnore=['\.rbc$', '\~$']
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowHidden=1
let g:NERDTreeRespectWildIgnore=1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

""" Keymaps

nnoremap <F2> :NERDTreeToggle<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :Gbrowse<cr>
inoremap jj <esc>
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz
nnoremap c "xc
xnoremap c "xc
nnoremap <leader><leader> <c-^>
nnoremap <leader>w :write<cr>
nnoremap <leader>q :quit<cr>
nnoremap <leader>d :bd<cr>
nnoremap <leader>Q :quitall<cr>
map <f7> gg=G
map <leader>\| :vsplit<cr>
map <leader>- :split<cr>
nnoremap <silent> <A-Right> :call utils#intelligentVerticalResize('right')<cr>
nnoremap <silent> <A-Left> :call utils#intelligentVerticalResize('left')<cr>
nnoremap <silent> <A-Up> :resize +1<cr>
nnoremap <silent> <A-Down> :resize -1<cr>
