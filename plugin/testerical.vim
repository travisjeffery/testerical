if exists("g:testerical_loaded")
  finish
endif

noremap <unique> <Plug>(testerical-run-individual) 
  :<C-u>call testerical#run_indiviual()<Return>
noremap <unique> <Plug>(testerical-run-file)
  :<C-u>call testerical#run_file()<Return>
noremap <unique> <Plug>TestericalRunLast 
  :<C-u>call testerical#run_last()<Return>

noremap <SID>Run :call <SID>Run(1)<CR>:redraw!<cr>
noremap <SID>RunFile :call <SID>Run(2)<CR>:redraw!<cr>
noremap <SID>RunLast :call <SID>RunLast()<CR>:redraw!<cr>

if !hasmapto('<Plug>(testerical-run-individual)')
  map <unique> <Leader>rt <Plug>(testerical-run-individual)
endif
if !hasmapto('<Plug>(testerical-run-file)')
  map <unique> <Leader>rf <Plug>(testerical-run-file)
endif
if !hasmapto('<Plug>TestericalRunLast')
  map <unique> <Leader>rl <Plug>TestericalRunLast
endif

let g:testerical_loaded = 1
