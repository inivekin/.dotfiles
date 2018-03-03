let g:vimwiki_list = [{'path':'~/drive/projects/wiki/',
                      \ 'path_html':'~/drive/projects/wiki/export/html/',
                      \ 'auto_toc':'1',
                      \ 'template_path':'~/drive/projects/wiki/templates/',
                      \ 'template_default':'default',
                      \ 'template_ext':'.html'},
                      \
                      \ {'path':'~/drive/.uwa/wiki/',
                      \ 'path_html':'~/drive/.uwa/wiki/export/html/'},
					  \
					  \ {'path':'~/drive/projects/rpg/',
                      \ 'path_html':'~/drive/projects/rpg/export/html/',
                      \ 'auto_toc':'1',
                      \ 'template_path':'~/drive/projects/rpg/templates/',
                      \ 'template_default':'default',
                      \ 'template_ext':'.html'}]
let g:vimwiki_h1_headers = 1
let g:vimwiki_table_auto_fmt = 0

hi VimwikiHeader1 ctermfg=4
hi VimwikiHeader2 ctermfg=2
hi VimwikiHeader3 ctermfg=5
hi VimwikiHeader4 ctermfg=6
hi VimwikiHeader5 ctermfg=3
hi VimwikiHeader6 ctermfg=1

hi VimwikiHR ctermfg=1
hi VimwikiList ctermfg=3

map <C-e> :VimwikiSplitLink<CR>
map <leader><CR> :VimwikiVSplitLink<CR>
nmap q :q<CR>
nmap <leader>' :VimwikiUISelect<CR>
