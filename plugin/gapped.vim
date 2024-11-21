" Toggle variable
let t = v:true

" Autosave on change
function! Farm()
	" Check that you can farm today
	if t
		silent !git add . && git commit -m "gapped" && git push
	endif
endfunction

autocmd TextChanged,TextChangedI * silent! write | call Farm()

command! ToggleGapped let t = !t