
noremap <silent> <leader>gs :GscopeFind csdict.find_c_symbol <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind csdict.find_definition <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind csdict.where_used <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind csdict.find_this_text_string <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind csdict.egrep <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind csdict.find_this_file <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind csdict.find_files_including <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind csdict.functions_called_by <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind csdict.where_this_symbol_is_assigned <C-R><C-W><cr>

nnoremap <silent> <Leader>ca :call Cscope(csdict.where_this_symbol_is_assigned, expand('<cword>'))<CR>
nnoremap <silent> <Leader>cc :call Cscope(csdict.where_used                   , expand('<cword>'))<CR>
nnoremap <silent> <Leader>cd :call Cscope(csdict.functions_called_by          , expand('<cword>'))<CR>
nnoremap <silent> <Leader>ce :call Cscope(csdict.egrep                        , expand('<cword>'))<CR>
nnoremap <silent> <Leader>cf :call Cscope(csdict.find_this_file               , expand('<cword>'))<CR>
nnoremap <silent> <Leader>cg :call Cscope(csdict.find_definition              , expand('<cword>'))<CR>
nnoremap <silent> <Leader>ci :call Cscope(csdict.find_files_including         , expand('<cword>'))<CR>
nnoremap <silent> <Leader>cs :call Cscope(csdict.find_c_symbol                , expand('<cword>'))<CR>
nnoremap <silent> <Leader>ct :call Cscope(csdict.find_this_text_string        , expand('<cword>'))<CR>

nnoremap <silent> <Leader><Leader>fa :call CscopeQuery(csdict.where_this_symbol_is_assigned)<CR>
nnoremap <silent> <Leader><Leader>fc :call CscopeQuery(csdict.where_used                   )<CR>
nnoremap <silent> <Leader><Leader>fd :call CscopeQuery(csdict.functions_called_by          )<CR>
nnoremap <silent> <Leader><Leader>fe :call CscopeQuery(csdict.egrep                        )<CR>
nnoremap <silent> <Leader><Leader>ff :call CscopeQuery(csdict.find_this_file               )<CR>
nnoremap <silent> <Leader><Leader>fg :call CscopeQuery(csdict.find_definition              )<CR>
nnoremap <silent> <Leader><Leader>fi :call CscopeQuery(csdict.find_files_including         )<CR>
nnoremap <silent> <Leader><Leader>fs :call CscopeQuery(csdict.find_c_symbol                )<CR>
nnoremap <silent> <Leader><Leader>ct :call CscopeQuery(csdict.find_this_text_string        )<CR>

nnoremap <silent> <Leader><Leader>ca :call CscopeQuery(csdict.where_this_symbol_is_assigned, 1)<CR>
nnoremap <silent> <Leader><Leader>cc :call CscopeQuery(csdict.where_used                   , 1)<CR>
nnoremap <silent> <Leader><Leader>cd :call CscopeQuery(csdict.functions_called_by          , 1)<CR>
nnoremap <silent> <Leader><Leader>ce :call CscopeQuery(csdict.egrep                        , 1)<CR>
nnoremap <silent> <Leader><Leader>cf :call CscopeQuery(csdict.find_this_file               , 1)<CR>
nnoremap <silent> <Leader><Leader>cg :call CscopeQuery(csdict.find_definition              , 1)<CR>
nnoremap <silent> <Leader><Leader>ci :call CscopeQuery(csdict.find_files_including         , 1)<CR>
nnoremap <silent> <Leader><Leader>cs :call CscopeQuery(csdict.find_c_symbol                , 1)<CR>
nnoremap <silent> <Leader><Leader>ct :call CscopeQuery(csdict.find_this_text_string        ,\% 1)<CR>
