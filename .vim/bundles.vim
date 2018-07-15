" PLUGINS BUNDLE

" auto install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/bundle')
Plug 'junegunn/vim-plug'

" Plug Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel']
endif

" Plugs here:
" GENERAL
if count(g:bundle_groups, 'general')
  Plug 'itchyny/calendar.vim'
  Plug 'chriskempson/base16-vim'
  Plug 'Lokaltog/vim-easymotion'
  Plug 'Stormherz/tablify'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-startify'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'troydm/easybuffer.vim'
  "Plug 'yonchu/accelerated-smooth-scroll'
  Plug 'pelodelfuego/vim-swoop'
  Plug 'vimwiki/vimwiki'
  Plug 'lilydjwg/colorizer'
  Plug 'vim-scripts/DrawIt'
  Plug 'reedes/vim-pencil'
  Plug 'tbabej/taskwiki'
  Plug 'farseer90718/vim-taskwarrior'
  Plug 'majutsushi/tagbar'
  Plug 'powerman/vim-plugin-AnsiEsc'
  Plug 'anekos/hledger-vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
  Plug 'jeetsukumaran/vim-buffergator'
  if has("nvim")
	  Plug 'vifm/neovim-vifm'
  else
	  Plug 'scrooloose/nerdtree'
  endif
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  if !has("nvim")
		Plug 'Shougo/neocomplete'
		Plug 'Shougo/neosnippet'
		Plug 'Shougo/neosnippet-snippets'
  else
	Plug 'Shougo/deoplete.nvim'
  endif
  Plug 'tpope/vim-fugitive'
  Plug 'osyo-manga/vim-over'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'Chiel92/vim-autoformat'
  Plug 'jiangmiao/auto-pairs'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'godlygeek/tabular'
  Plug 'mhinz/vim-signify'
  Plug 'scrooloose/nerdcommenter'
  if !has("nvim")
    Plug 'scrooloose/syntastic'
  else
    Plug 'w0rp/ale'
  endif
  Plug 'chrisbra/unicode.vim'
  Plug 'pangloss/vim-javascript'
  "Plug 'sjl/gundo.vim'
  "Plug 'ludovicchabant/vim-gutentags'
  Plug 'lervag/vimtex'
  Plug 'rust-lang/rust.vim'
  Plug 'racer-rust/vim-racer'
  Plug 'justinmk/vim-syntax-extra'
endif
" LANGUAGES
if count(g:bundle_groups, 'languages')
  Plug 'ap/vim-css-color'
  Plug 'sheerun/vim-polyglot'
  Plug 'othree/html5.vim'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'othree/yajs.vim'
  Plug 'slava/vim-spacebars'
  Plug 'burnettk/vim-angular'
  Plug 'kchmck/vim-coffee-script'
  Plug 'leafgarland/typescript-vim'
endif

call plug#end()
