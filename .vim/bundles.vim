" PLUGINS BUNDLE
let vundle_readme=expand($HOME.'/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Plugin.."
  echo ""
  silent !mkdir -p $HOME/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle $HOME/.vim/bundle/vundle/
endif

" Required:
if has('vim_starting')
  set nocompatible
  set runtimepath+=$HOME/.vim/bundle/vundle/
  set sessionoptions-=options
endif

call vundle#rc(expand($HOME.'/.vim/bundle/'))
Plugin 'gmarik/vundle'

" Plugin Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'languages', 'colorscheme']
endif

" Plugins here:
" GENERAL
if count(g:bundle_groups, 'general')
  Plugin 'itchyny/calendar.vim'
  Plugin 'chriskempson/base16-vim'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'Stormherz/tablify'
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'kien/ctrlp.vim'
  Plugin 'tacahiroy/ctrlp-funky'
  Plugin 'kris89/vim-multiple-cursors'
  Plugin 'mbbill/undotree'
  Plugin 'mhinz/vim-startify'
  Plugin 'tpope/vim-abolish'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'troydm/easybuffer.vim'
  Plugin 'yonchu/accelerated-smooth-scroll'
  Plugin 'pelodelfuego/vim-swoop'
  Plugin 'vimwiki/vimwiki'
  Plugin 'lilydjwg/colorizer'
  Plugin 'DrawIt'
  Plugin 'reedes/vim-pencil'
  Plugin 'tbabej/taskwiki'
  Plugin 'farseer90718/vim-taskwarrior'
  Plugin 'majutsushi/tagbar'
  Plugin 'powerman/vim-plugin-AnsiEsc'
  Plugin 'junegunn/fzf'
  Plugin 'junegunn/fzf.vim'
  Plugin 'anekos/hledger-vim'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  if !has("nvim")
		Plugin 'Shougo/neocomplete'
		Plugin 'Shougo/neosnippet'
		Plugin 'Shougo/neosnippet-snippets'
  else
	"Plugin 'ervandew/supertab'
	Plugin 'Shougo/deoplete.nvim'
  endif
  Plugin 'tpope/vim-fugitive'
  Plugin 'osyo-manga/vim-over'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'Chiel92/vim-autoformat'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'scrooloose/nerdtree'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  Plugin 'godlygeek/tabular'
  Plugin 'mhinz/vim-signify'
  Plugin 'scrooloose/nerdcommenter'
  if !has("nvim")
    Plugin 'scrooloose/syntastic'
  else
    Plugin 'w0rp/ale'
  endif
  Plugin 'chrisbra/unicode.vim'
  Plugin 'pangloss/vim-javascript'
  Plugin 'sjl/gundo.vim'
  Plugin 'ludovicchabant/vim-gutentags'
  Plugin 'lervag/vimtex'
  Plugin 'rust-lang/rust.vim'
  Plugin 'racer-rust/vim-racer'
endif
" LANGUAGES
"if count(g:bundle_groups, 'languages')
  "Plugin 'ap/vim-css-color'
  "Plugin 'sheerun/vim-polyglot'
  "Plugin 'othree/html5.vim'
  "Plugin 'othree/javascript-libraries-syntax.vim'
  "Plugin 'othree/yajs.vim'
  "Plugin 'slava/vim-spacebars'
  "Plugin 'burnettk/vim-angular'
  "Plugin 'kchmck/vim-coffee-script'
  "Plugin 'leafgarland/typescript-vim'
"endif
