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
" Asynchronous maker and linter (needs linters to work)
" Plug 'benekastah/neomake', { 'on': ['Neomake'] }
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
Plug 'dyng/ctrlsf.vim'
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
" Dark powered asynchronous completion framework for neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" deoplete.nvim source for javascript
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g tern' }
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
" Git log viewer (Gitv! for file mode)
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
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
" This vim plugin brings syntax highlighting and linting for API Blueprint.
Plug 'kylef/apiblueprint.vim'
" Vim syntax plugin for Riot.js
Plug 'ryym/vim-riot'
" Tern plugin for Vim
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" JavaScript Parameter Complete
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
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

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.2 Plugin settings
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
source $HOME/.config/nvim/config/plugins/airline.vimrc
source $HOME/.config/nvim/config/plugins/ctrlsf.vimrc
source $HOME/.config/nvim/config/plugins/deoplete.vimrc
source $HOME/.config/nvim/config/plugins/editorconfig.vimrc
source $HOME/.config/nvim/config/plugins/fugitive.vimrc
source $HOME/.config/nvim/config/plugins/nerdtree.vimrc
source $HOME/.config/nvim/config/plugins/sneak.vimrc
source $HOME/.config/nvim/config/plugins/tern_for_vim.vimrc
source $HOME/.config/nvim/config/plugins/ultisnips.vimrc
source $HOME/.config/nvim/config/plugins/vimux.vimrc
source $HOME/.config/nvim/config/plugins/vroom.vimrc
source $HOME/.config/nvim/config/plugins/camelcasemotion.vimrc

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.2 Languages settings
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
source $HOME/.config/nvim/config/languages/javascript.vimrc
source $HOME/.config/nvim/config/languages/ruby.vimrc
source $HOME/.config/nvim/config/languages/vim.vimrc
