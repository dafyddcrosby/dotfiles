set nocompatible " Use Vim defaults

if has("syntax")
  syntax on " syntax highlighting
endif

set showmatch " Show matching brackets
set fileformat=unix
set wrap

set linebreak
set display+=lastline

set autoindent
set smartindent

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

nnoremap j gj
nnoremap k gk

" Sometimes backspace is broken in source-built Vim
set backspace=2
set backspace=indent,eol,start

source ~/.vim/plug.vim

filetype plugin on
filetype on

function ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces())

" Use Mac OS X clipboard
if has('mac')
  set clipboard=unnamed
endif

" Use the Vim 7 spellchecker
au BufNewFile,BufRead *.txt,*.html,*.rst,*.md,README*,*.tex set spell

" Source personal abbreviations
source ~/.vim/abbrev.vim

" Use tag file in .git, no cscope
set nocst
set tags+=./.git/tags,.././.git/tags,../.././.git/tags,../../.././.git/tags

" Toggle taglist window
nnoremap <silent> <F8> :TlistToggle<CR>

" Add a dictionary
set dictionary+=/usr/share/dict/words

let g:gitgutter_diff_args = '--patience -w'

" Set omnicompletion
set omnifunc=syntaxcomplete#Complete

source ~/.vim/underline.vim

source ~/.vim/rst_syntax.vim

" RST tables
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

autocmd FileType gitcommit setlocal spell

" Don't know why this isn't a thing already
nnoremap ZN :write<CR>:next<CR>

map <Leader>tt <Plug>VimwikiToggleListItem

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'rust', 'bash=sh', 'php', 'css', 'javascript', 'js=javascript', 'json=javascript', 'yaml', 'html', 'go']

let g:lisp_rainbow=1
