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
Bundle 'Lokaltog/vim-powerline'

" Vim plugin for the Perl module / CLI script 'ack'
Bundle 'mileszs/ack.vim'

" Vim plugin that displays tags in a window, ordered by class etc.
Bundle 'majutsushi/tagbar'

" Vim plugin to list, select and switch between buffers.
Bundle 'jeetsukumaran/vim-buffergator'

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

" Syntaxes
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'vim-ruby/vim-ruby'

" Snipmate 
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
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
set foldmethod=syntax
set pastetoggle=<F9>
set mouse=a

" Command line
set history=50                    " keep 50 lines of command line history
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
set wildignore+=*.o,*.obj,.git,*.rbc,*.png,*.PNG,*.JPG,*.jpg,*.GIF,*.gif,vendor/**,coverage/**,tmp/**,rdoc/**

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
let g:Powerline_symbols = 'fancy'
let g:buffergator_viewport_split_policy = 'B'
let g:buffergator_split_size = 20
let g:buffergator_suppress_keymaps = 1

" NERDTree
let NERDTreeIgnore=['\.rbc$', '\~$']

" Tagbar
let g:tabgbar_ctags_bin="/usr/local/bin/ctags"
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nnoremap <F4> :GundoToggle<CR>

" Ack
map <leader>f :Ack 

" Write and quit on the fly
map <leader>w :write<CR>
map <leader>q :quit<CR>
map <leader>Q :quitall<CR>

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

" Buffergator
map <leader>b :BuffergatorOpen<CR>
map <leader>bb :BuffergatorOpen<CR>
map <leader>bt :BuffergatorTabsOpen<CR>

" Rails stuff
map <leader>ra :A<CR>
map <leader>rr :R<CR>
map <leader>rm :Rmodel<CR>
map <leader>rc :Rcontroller<CR>
map <leader>rv :Rview<CR>
map <leader>rs :Rscript 
vmap <leader>re :Rextract

" Run Test
map <leader>T :call RunCurrentTest()<CR>
map <leader>t :call RunCurrentLineInTest()<CR>

" CTags
set tags=./.tags,.tags
map <f5> :!/usr/local/bin/ctags -f .tags *<CR><CR>
map <f6> :!bundle list --paths=true \| xargs /usr/local/bin/ctags -f .tags *<CR><CR>

" Split
map <leader>\| :vsplit<CR>
map <leader>- :split<CR>

" Escape
imap ` <Esc>

" Tab
imap <tab> <C-n>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custum scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Test-running stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RunCurrentTest()
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
  if in_test_file
    call SetTestFile()

    if match(expand('%'), '\.feature$') != -1
      call SetTestRunner("!cucumber")
      exec g:bjo_test_runner g:bjo_test_file
    elseif match(expand('%'), '_spec\.rb$') != -1
      if filereadable(getcwd()."/.spin") 
        call SetTestRunner("silent !spin push")
        exec g:bjo_test_runner g:bjo_test_file
        exec 'redraw!'
      else
        call SetTestRunner("!rspec")
        exec g:bjo_test_runner g:bjo_test_file
      end
    else
      call SetTestRunner("!ruby -Itest")
      exec g:bjo_test_runner g:bjo_test_file
    endif
  else
    exec g:bjo_test_runner g:bjo_test_file
  endif
endfunction

function! SetTestRunner(runner)
  let g:bjo_test_runner=a:runner
endfunction

function! RunCurrentLineInTest()
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
  if in_test_file
    call SetTestFileWithLine()
  end

  if filereadable(getcwd()."/.spin")
    exec "silent !spin push" g:bjo_test_file . ":" . g:bjo_test_file_line 
    exec 'redraw!'
  else
    exec "!rspec" g:bjo_test_file . ":" . g:bjo_test_file_line
  end
endfunction

function! SetTestFile()
  let g:bjo_test_file=@%
endfunction

function! SetTestFileWithLine()
  let g:bjo_test_file=@%
  let g:bjo_test_file_line=line(".")
endfunction
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
