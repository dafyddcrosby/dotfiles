call plug#begin('~/.vim/plugged')

" Stop making machine-recognizable syntax errors
"Plug 'vim-syntastic/syntastic' <- deprecated, use Ale
Plug 'dense-analysis/ale'

" TODO: kramdown needs to handle checkboxes, MDL too noisy otherwise
let g:loaded_syntastic_markdown_mdl_checker = 0
let g:syntastic_markdown_checkers = ['text/proselint']

" Automatic closing of parentheses/quotes
Plug 'Raimondi/delimitMate'

" Show git changes
Plug 'airblade/vim-gitgutter'

" Add a compare choice for swap files
Plug 'chrisbra/Recover.vim'

" Org highlighting
" TODO disable folding
"Plug 'axvr/org.vim'

" Solarized theme to be easier on the eyes
Plug 'altercation/vim-colors-solarized'

" Highlight common writing problems
Plug 'davidbeckingsale/writegood.vim'

" An outliner is a debugger for the mind
Plug 'vimoutliner/vimoutliner'

" Properly handle end-structures in Ruby, Bash, etc
Plug 'tpope/vim-endwise'

" Language-specific plugins
Plug 'davidoc/taskpaper.vim'

" Cleanup markdown tables
Plug 'junegunn/vim-easy-align', {'for': 'markdown'}
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

" Initialize Plug system
call plug#end()
