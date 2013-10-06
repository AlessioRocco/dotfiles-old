"" Vim configuration

"" Credits:
""   Gary Bernhardt  <destroyallsoftware.com>
""   Drew Neil  <vimcasts.org>
""   Tim Pope  <tbaggery.com>
""   Janus  <github.com/carlhuda/janus>
""   Mislav <mislav.uniqpath.com/2011/12/vim-revisited>
""   Andrea Pavoni <https://github.com/apeacox/vim_starter_kit>

set nocompatible                  " use Vim, not Vi
filetype off                      " automatically detect file types. Also equired for vundle.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" START Vundle setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" My Bundles here:

" Utils

" The ultimate vim statusline utility
Bundle 'Lokaltog/powerline'

" Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / "CLI script 'ack'
Bundle 'rking/ag.vim'

" Vim plugin that displays tags in a window, ordered by class etc.
Bundle 'majutsushi/tagbar'

" unimpaired.vim: pairs of handy bracket mappings
Bundle 'tpope/vim-unimpaired'

" hax0r vim script to give you a tree explorer
Bundle 'scrooloose/nerdtree'

" Vim plugin for intensely orgasmic commenting
Bundle 'scrooloose/nerdcommenter'

" surround.vim: quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'

" extended % matching for HTML, LaTeX, and many other languages
Bundle 'tsaleh/vim-matchit'

" Fuzzy file, buffer, mru, tag, etc finder.
Bundle 'kien/ctrlp.vim'

" Vim Git
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'

" Vim script for text filtering and alignment
Bundle 'godlygeek/tabular'

" Graph your Vim undo tree in style
Bundle 'sjl/gundo.vim'

" Vimux
Bundle 'benmills/vimux'

" Vim Ruby Debugger
" Bundle 'astashov/vim-ruby-debugger'

" Vroom
Bundle 'skalnik/vim-vroom'

" Vitality
Bundle 'sjl/vitality.vim'

" Gitgutter
Bundle 'airblade/vim-gitgutter'

" Gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" Remove trailing whitespace
Bundle 'rondale-sc/vim-spacejam'

" Syntaxes
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'sunaku/vim-ruby-minitest'

" Snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"

" Themes
Bundle 'altercation/vim-colors-solarized'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Theme
syntax enable
set background=dark
colorscheme solarized
call togglebg#map("<F12>")

" Editing
syntax on                         " enable syntax highlighting
filetype indent on                " automatically do language-dependent indenting. Also equired for vundle.
filetype plugin on                " loading the plugin files for specific file types. Also equired for vundle.
set encoding=utf-8                " sets the character encoding used inside Vim
set fenc=utf-8                    " sets the character encoding for the file of this buffer
set number                        " line numbers on
set ruler                         " show the cursor position all the time
set visualbell                    " no beeping
set backspace=indent,eol,start    " allow backspacing over everything in insert mode
set autoindent                    " always set autoindenting on
let mapleader=","                 " change mapleader key
set noshowmode                    " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set complete=.,w,b,u,i
set foldmethod=manual
set pastetoggle=<F9>
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
set timeoutlen=1000 ttimeoutlen=0

" Line width
" http://blog.ezyang.com/2010/03/vim-textwidth/
set tw=78
set fo+=t
"augroup vimrc_autocmds
  "autocmd BufEnter * highlight OverLength ctermbg=LightGrey guibg=#502020
  "autocmd BufEnter * match OverLength /\%78v.*/
"augroup END

" Disabled for now, it's slow
" Line numbers (relative in normal, absolute in insert)
" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber

" Command line
set history=1000                    " keep 1000 lines of command line history
set wildmenu                      " Enhanced command line completion.

" Use space instead of tabs
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.png,*.PNG,*.JPG,*.jpg,*.GIF,*.gif,vendor/**,coverage/**,tmp/**,rdoc/**,*/tmp/*,*.so,*.swp,*.zip

" Status bar
set laststatus=2
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set hidden                        " Handle multiple buffers better.

" Backups and swap files
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup
set noswapfile                    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" NERDTree
let NERDTreeIgnore=['\.rbc$', '\~$']

" Tagbar
let g:tagbar_type_ruby = {
      \ 'kinds' : [
      \ 'm:modules',
      \ 'c:classes',
      \ 'd:describes',
      \ 'C:contexts',
      \ 'f:methods',
      \ 'F:singleton methods'
      \ ]
      \ }

" Ruby Debugger
" let g:ruby_debugger_progname = 'mvim'

"CtrlP
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nnoremap <F4> :GundoToggle<CR>

" Ag
map <leader>/ :Ag<space>

" Write and quit on the fly
map <leader>w :write<CR>
map <leader>q :quit<CR>
map <leader>qq :quit<CR>
map <leader>qb :bd<CR>
map <leader>qa :quitall<CR>

" Modify vimrc on the fly
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>vr :source $MYVIMRC<CR>

" disable arrow keys, use hjkl
noremap  <Up> ""
noremap  <Down> ""
noremap  <Left> ""
noremap  <Right> ""

" navigate split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Vim Fugitive stuff
nmap <leader>gs :Gstatus<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gc :Gcommit<CR>

" Rails stuff
map ga :A<CR>
map gr :R<CR>
" vmap <leader>e :Rextract

" Run Test
let g:vroom_use_vimux = 1
let g:VimuxOrientation = "h"

" CTags
set tags=./tags,tags
map <f5> :!ctags -f tags *<CR><CR>
map <f6> :!bundle list --paths=true \| xargs ctags -f tags *<CR><CR>

" Split
map <leader>\| :vsplit<CR>
map <leader>- :split<CR>

" Indent file
map <f7> gg=G

" Copy to system clipboard
map <leader>y "*y

" Paste from system clipboard
map <leader>p "*p

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custum scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Conditionally autocreating non-existent directories
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup AutoMkdir
  autocmd!
  autocmd  BufNewFile  *  :call EnsureDirExists()
augroup END
function! EnsureDirExists ()
  let required_dir = expand("%:h")
  if !isdirectory(required_dir)
    call AskQuit("Directory '" . required_dir . "' doesn't exist.", "&Create it?")

    try
      call mkdir( required_dir, 'p' )
    catch
      call AskQuit("Can't create '" . required_dir . "'", "&Continue anyway?")
    endtry
  endif
endfunction

function! AskQuit (msg, proposed_action)
  if confirm(a:msg, "&Quit?\n" . a:proposed_action) == 1
    exit
  endif
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
