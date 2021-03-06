" PLUGINS CONFIG
" autoformat
  noremap <F3> :Autoformat<CR><CR>

" airline
  let g:airline_detect_modified=1
  let g:airline_detect_paste=1
  let g:airline_inactive_collapse=1
  let g:airline_powerline_fonts = 1
  "let g:bufferline_echo = 0
  let g:airline#extensions#bufferline#enabled = 1
  let g:airline#extensions#syntastic#enabled = 1
  let g:airline#extensions#hunks#enabled = 1
  let g:airline#extensions#ctrlp#show_adjacent_modes = 1
  let g:airline#extensions#whitespace#enabled = 1
  let g:airline_theme='base16'
  "let g:airline_left_sep = ''
  "let g:airline_right_sep = ''
  if GUI()
    if !exists('g:airline_symbols')
      let g:airline_left_sep = '»'
      let g:airline_left_sep = '▶'
      let g:airline_right_sep = '«'
      let g:airline_right_sep = '◀'
      let g:airline_symbols.linenr = '␊'
      let g:airline_symbols.linenr = '␤'
      let g:airline_symbols.linenr = '¶'
      let g:airline_symbols.branch = '⎇'
      let g:airline_symbols.paste = 'ρ'
      let g:airline_symbols.paste = 'Þ'
      let g:airline_symbols.paste = '∥'
      let g:airline_symbols.whitespace = 'Ξ'
    endif
    if !exists('g:airline_powerline_fonts')
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''
    endif
  endif

" buffergator
  nmap <leader>b :EasyBufferHorizontal<CR>
  let g:easybuffer_horizontal_height = '15'

" ctrlp

  " Use fd for ctrlp.
	if executable('fd')
		let g:ctrlp_user_command = 'fd -c never "" "%s"'
		let g:ctrlp_use_caching = 0
	endif

  let g:ctrlp_cache_dir = $HOME.'/.vim/.ctrlp_cache'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_extensions = ['funky']

  nmap <silent>cp :CtrlPMixed<CR>
  nmap <silent>cm :CtrlPMRUFiles<CR>
  nmap <silent>cf :CtrlPFunky<CR>
  nmap <silent>cl :CtrlPLine<CR>
  nmap <silent>cb :CtrlPBuffer<CR>
  nmap <silent>ct :CtrlPBufTag<CR>
  nmap <silent>cc :CtrlPTag<CR>

  let g:ctrlp_custom_ignore = {
        \ 'dir': '\.git$\|\.hg$\|\.svn|\bower_components|\node_modules$',
        \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

  " On Windows use "dir" as fallback command.
  if WINDOWS()
    let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
  elseif executable('ag')
    let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
  elseif executable('ack')
    let s:ctrlp_fallback = 'ack %s --nocolor -f'
  else
    let s:ctrlp_fallback = 'find %s -type f'
  endif

  let g:ctrlp_user_command = {
        \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
        \ 2: ['.hg', 'hg --cwd %s locate -i .'],
        \ },
        \ 'fallback': s:ctrlp_fallback
        \ }

" easymotion
  let g:EasyMotion_leader_key = 'e'
  hi link EasyMotionTarget ErrorMsg
  hi link EasyMotionShade  Comment

" emmet
  "let g:user_emmet_leader_key = '!'

" indent guides
  "let g:indentLine_char = '│'
  "let g:indentLine_faster = 1

" NERDCommenter
  nmap ; <Plug>NERDCommenterToggle
  vmap ; <Plug>NERDCommenterToggle

" NERDTree
  map <silent> <C-o> :NERDTreeToggle<CR>
  let g:NERDTreeBookmarksFile = expand($HOME.'/.vim/.NERDTreeBookmarks')
  let g:NERDTreeWinPos = "right"
  let g:NERDTreeShowBookmarks = 1
  let g:NERDTreeWinSize = 40
  let g:NERDTreeChristmasTree = 0
  let g:NERDTreeCaseSensitiveSort = 1
  let g:NERDTreeQuitOnOpen = 1
  let g:NERDTreeShowHidden = 1
  let g:NERDTreeMouseMode = 2
  let NERDTreeAutoDeleteBuffer=1
  let g:NERDTreeIgnore=[
        \'\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
        \ '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$' ]

" rainbow parentheses
  "let g:rainbow_active = 1

" signify
  let g:signify_sign_overwrite = 1
  let g:signify_sign_add = '+'
  let g:signify_sign_change = '~'
  let g:signify_sign_delete = '-'
  let g:signify_sign_delete_first_line = '-'

" startify

  let g:startify_change_to_dir          = 0
  let g:startify_enable_special         = 0
  let g:startify_files_number           = 11
  let g:startify_session_autoload       = 1
  let g:startify_session_delete_buffers = 1
  let g:startify_session_persistence    = 1
  let g:ascii = [
        \  '           *      +    .       _            .-.       :     _.    .    ',
        \  '                           c==({)_    .`   (   \  .      ._/  "\_      ',
        \  '          +  .          .  _  )`\-|      *  )   \       (        `"-   ',
        \  '                 .        /_`` // |\     .-"     `-.     )             ',
        \  '        .                c"/`-`u\_| )   /       .   \   /              ',
        \  '               . *        //       (   /      .      `-"        +      ',
        \  '          . .            c"  .      `-"`          *           .        ',
        \  ''
        \]
  let g:startify_custom_header = g:ascii
  let g:startify_bookmarks = [ {'mp': '~/drive/projects/github/WelcometoMoonPrison-tmh/'}, {'v': '~/.vim/'} ]
  hi StartifyHeader ctermfg=3

 "swoop
  let g:swoopUseDefaultKeyMap = 0
  nmap f :call Swoop()<CR>
  vmap f :call SwoopSelection()<CR>
  nmap F :call SwoopMulti()<CR>
  vmap F :call SwoopMultiSelection()<CR>

 "syntastic
if !has("nvim")
  let g:syntastic_enable_balloons = 1
  let g:syntastic_auto_jump=0
  let g:syntastic_always_populate_loc_list=1
  let g:syntastic_auto_loc_list=1
  let g:syntastic_loc_list_height=5
  let g:syntastic_enable_signs=1
  let g:syntastic_error_symbol='✗'
  let g:syntastic_warning_symbol='⚠'
  let g:syntastic_javascript_checkers=['eslint']
endif

 "ALE
if has("nvim")
 let g:ale_fix_on_save = 1
 let g:ale_fixers = {
       \'javascript': [
       \'eslint'
       \],
       \}
 let g:ale_javascript_eslint_use_global = 1
endif

" tabularize
  nmap <leader>a& :Tabularize /&<CR>
  vmap <leader>a& :Tabularize /&<CR>
  nmap <leader>a# :Tabularize /#<CR>
  vmap <leader>a# :Tabularize /#<CR>
  nmap <leader>a= :Tabularize /^[^=]*\zs=<CR>
  vmap <leader>a= :Tabularize /^[^=]*\zs=<CR>
  nmap <leader>a=> :Tabularize /=><CR>
  vmap <leader>a=> :Tabularize /=><CR>
  nmap <leader>a: :Tabularize /:<CR>
  vmap <leader>a: :Tabularize /:<CR>
  nmap <leader>a:: :Tabularize /:\zs<CR>
  vmap <leader>a:: :Tabularize /:\zs<CR>
  nmap <leader>a, :Tabularize /,<CR>
  vmap <leader>a, :Tabularize /,<CR>
  nmap <leader>a,, :Tabularize /,\zs<CR>
  vmap <leader>a,, :Tabularize /,\zs<CR>
  nmap <leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <leader>a<Bar> :Tabularize /<Bar><CR>

" undotree
  nmap <silent>U :UndotreeToggle<CR>
  " If undotree is opened, it is likely one wants to interact with it.
  let g:undotree_SetFocusWhenToggle=1

" vim-over
  nnoremap <C-h> :OverCommandLine<CR>%s/<C-r><C-w>/

  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" deoplete
if has("nvim")
    let g:deoplete#enable_at_startup = 1

	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

	call deoplete#custom#source('ultisnips', 'rank', 9999)
	let g:UltiSnipsExpandTrigger="<C-k>"
	let g:UltiSnipsJumpForwardTrigger = "<Tab>"
	let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
	let g:UltiSnipsListSnippets="<C-Tab>"

	if !exists('g:deoplete#omni#input_patterns')
		let g:deoplete#omni#input_patterns = {}
	endif
	let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete
else
  " neocomplete
	let neocomplete_readme=expand('~/.vim/bundle/neocomplete/README.md')
	if WINDOWS() || filereadable(neocomplete_readme)
	  let g:neocomplete#enable_at_startup = 1
	  let g:neocomplete#enable_smart_case = 1
	  let g:neocomplete#enable_auto_delimiter = 1
	  let g:neocomplete#max_list = 15
	  let g:neocomplete#force_overwrite_completefunc = 1

	   "Use honza's snippets.
	  let g:neosnippet#snippets_directory=expand($HOME.'/.vim/bundle/vim-snippets/snippets')

	  " Define keyword.
	  if !exists('g:neocomplete#keyword_patterns')
		  let g:neocomplete#keyword_patterns = {}
	  endif
	  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

	  " supertab like snippets behavior.
	  imap <expr><tab> neosnippet#expandable_or_jumpable() ?
	  \ "\<plug>(neosnippet_expand_or_jump)"
	  \: pumvisible() ? "\<c-n>" : "\<tab>"
	  smap <expr><tab> neosnippet#expandable_or_jumpable() ?
	  \ "\<plug>(neosnippet_expand_or_jump)"
	  \: "\<tab>"

	  " some convenient mappings
	  imap <expr><up> pumvisible() ? "\<c-p>" : "\<up>"
	  imap <expr><c-k>  pumvisible() ? "\<c-p>" : "\<c-k>"

	  imap <expr><down> pumvisible() ? "\<c-n>" : "\<down>"
	  imap <expr><c-j>  pumvisible() ? "\<c-n>" : "\<c-j>"

	  imap <expr><esc> pumvisible() ? "\<c-y>\<esc>" : "\<esc>"

	  " <CR>: close popup
	  function! SmartReturn()
		if pumvisible()
		  if neosnippet#expandable()
			let expand = "\<Plug>(neosnippet_expand)"
			return expand . neocomplete#smart_close_popup()
		  else
			return neocomplete#smart_close_popup()
		  endif
		else
		  return "\<CR>"
		endif
	  endfunction
	  " <CR> close popup and save indent or expand snippet
	  imap <expr> <CR> SmartReturn()

	  " Enable heavy omni completion.
	  if !exists('g:neocomplete#sources#omni#input_patterns')
		let g:neocomplete#sources#omni#input_patterns = {}
	  endif
	  let g:neocomplete#sources#omni#input_patterns.c='[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
	  let g:neocomplete#sources#omni#input_patterns.cpp='[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
	  let g:neocomplete#sources#omni#input_patterns.xml='<[^>]*'
	  let g:neocomplete#sources#omni#input_patterns.html='<[^>]*'
	  let g:neocomplete#sources#omni#input_patterns.markdown='<[^>]*'
	  let g:neocomplete#sources#omni#input_patterns.css='^\s\+\w+\|\w+[):;]?\s\+\|[@!]'
	  let g:neocomplete#sources#omni#input_patterns.less='^\s\+\w+\|\w+[):;]?\s\+\|[@!]'
	  let g:neocomplete#sources#omni#input_patterns.javascript='[^. \t]\.\%(\h\w*\)\?'
	  let g:neocomplete#sources#omni#input_patterns.json='[^. \t]\.\%(\h\w*\)\?'
	  let g:neocomplete#sources#omni#input_patterns.python='[^. *\t]\.\h\w*\|\h\w*::'
	  let g:neocomplete#sources#omni#input_patterns.ruby='[^. *\t]\.\w*\|\h\w*::'
	  let g:neocomplete#sources#omni#input_patterns.php='[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
	  let g:neocomplete#sources#omni#input_patterns.python3='[^. *\t]\.\h\w*\|\h\w*::'
	  let g:neocomplete#sources#omni#input_patterns.go='\h\w*\%.'
	  let g:neocomplete#sources#omni#input_patterns.perl='\h\w*->\h\w*\|\h\w*::'
	  let g:neocomplete#sources#omni#input_patterns.java='\%(\h\w*\|)\)\.'

	else
	  " ultisnips
	  let g:UltiSnipsExpandTrigger = "<Tab>"
	  let g:UltiSnipsJumpForwardTrigger = "<Tab>"
	  let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"
	  let g:UltiSnipsListSnippets="<C-Tab>"
	  " YouCompleteMe
	  let g:ycm_register_as_syntastic_checker = 1
	  let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
	  let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
	  if GUI()
		let g:ycm_key_invoke_completion = '<C-Space>'
	  else
		let g:ycm_key_invoke_completion = '<C-@>'
	  endif
	endif
endif

" neovim-vifm
let $MYVIFMRC="/.vifm/vifmrc"

" Vimtex

"setlocal spell
" suggestions by z= and add to accepted words by zg
