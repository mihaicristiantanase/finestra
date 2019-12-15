"
" Minimalist window management
"

let g:source = {}

fun! ResetSource()
  let g:source = {}
endf

call ResetSource()

fun! MarkOrSplit(split)
  if g:source == {}
    let g:source = {
          \'window': winnr(),
          \'buffer': bufnr()
          \}
    echo "Window is marked."
  else
    let window = g:source['window']
    let buffer = g:source['buffer']
    call ResetSource()
    execute window . 'close'
    if a:split == 'no'
      execute 'buffer ' . buffer
    elseif a:split == 'left'
      execute 'vert sbuffer ' . buffer
    elseif a:split == 'right'
      execute 'rightbelow vert sbuffer ' . buffer
    elseif a:split == 'top'
      execute 'sbuffer ' . buffer
    elseif a:split == 'bottom'
      execute 'rightbelow  sbuffer ' . buffer
    endif
    silent norm =
  endif
endf

nnoremap <leader>ww :call MarkOrSplit('no')<CR>
nnoremap <leader>wh :call MarkOrSplit('left')<CR>
nnoremap <leader>wl :call MarkOrSplit('right')<CR>
nnoremap <leader>wk :call MarkOrSplit('top')<CR>
nnoremap <leader>wj :call MarkOrSplit('bottom')<CR>
