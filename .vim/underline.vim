function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)

nnoremap gu- :Underline -<CR>
nnoremap gu= :Underline =<CR>

" Add more language syntax support for reStructuredText code blocks
if !exists('g:rst_syntax_code_list')
    let g:rst_syntax_code_list = ['vim', 'java', 'cpp', 'lisp', 'php', 'python', 'perl', 'ruby', 'javascript',  'tcl', 'html']
endif
