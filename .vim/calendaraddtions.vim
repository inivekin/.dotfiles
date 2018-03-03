let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

let g:vimwiki_use_calendar = 1

function! s:calendar_syntax()
  highlight CalendarSaturday ctermbg=4 ctermfg=0 guibg=#3971ed guifg=#cc342b
  highlight CalendarSunday ctermbg=1 ctermfg=0 guibg=#3971ed guifg=#cc342b
  highlight CalendarToday ctermbg=3 ctermfg=0 guibg=#3971ed guifg=#cc342b
  highlight CalendarSundayTitle ctermbg=9 ctermfg=0 guibg=#3971ed guifg=#cc342b
  highlight CalendarSaturdayTitle ctermbg=12 ctermfg=0 guibg=#3871ed guifg=#cc342b
endfunction

augroup CalendarSetSyntax
    autocmd!
    autocmd FileType calendar call s:calendar_syntax()
augroup END
