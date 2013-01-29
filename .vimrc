set nocompatible " Use Vim defaults

if has("syntax")
  syntax on " syntax highlighting
endif

set showmatch " Show matching brackets
set fileformat=unix
set wrap

set linebreak
set display+=lastline

set ai " Set autoindent
set si " Smart indent

set list listchars=tab:»-,trail:·
highlight SpecialKey ctermfg=darkblue ctermbg=white

let python_space_errors = 1

set wildmenu " command-line completion
set hlsearch " search highlighting
set ruler " display cursor position

" Set wildcard ignores
set wildignore=*.o,*.obj,*.bak,*.exe,*~

set ignorecase " Case-insensitive matching

" Trim trailing whitespace on certain files
autocmd FileType c,cpp,java,php,python,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e

" Fix staircase pasting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

filetype plugin on

" Use the Vim 7 spellchecker
au BufNewFile,BufRead *.txt,*.html,*.rst,*.md,README* set spell

" code-folding settings
set foldmethod=indent
set foldnestmax=10
set foldenable
set foldlevel=0

au BufRead,BufNewFile *php,*.py set softtabstop=4

" Number of spaces to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
" Python: 4 spaces
" C: 8 spaces (pre-existing files) or 4 spaces (new files)
au BufRead,BufNewFile *php,*.py,*pyw set shiftwidth=4
au BufRead *.c,*.h set shiftwidth=8
au BufNewFile *.c,*.h set shiftwidth=4

" Number of spaces that a pre-existing tab is equal to.
" For the amount of space used for a new tab use shiftwidth.
" Python: 8
" C: 8
au BufRead,BufNewFile *pyw,*.c,*.h set tabstop=8
au BufRead,BufNewFile *php,*py set tabstop=4

" Replace tabs with the equivalent number of spaces.
" Also have an autocmd for Makefiles since they require hard tabs.
" Python: yes
" C: no
" Makefile: no
au BufRead,BufNewFile *php,*.py,*.pyw set expandtab
au BufRead,BufNewFile *.c,*.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" Wrap text after a certain number of characters
" Python: 79 
" C: 79
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79

" Turn off settings in 'formatoptions' relating to comment formatting.
" - c : do not automatically insert the comment leader when wrapping based on
"    'textwidth'
" - o : do not insert the comment leader when using 'o' or 'O' from command mode
" - r : do not insert the comment leader when hitting <Enter> in insert mode
" Python: not needed
" C: prevents insertion of '*' at the beginning of every line in a comment
au BufRead,BufNewFile *.c,*.h set formatoptions-=c formatoptions-=o formatoptions-=r
