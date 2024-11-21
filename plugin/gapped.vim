" Autosave on change
function! Farm()
	silent !git add . && git commit -m "gapped" && git push
endfunction

autocmd TextChanged,TextChangedI * silent! write | call Farm()
