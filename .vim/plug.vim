call plug#begin('~/.vim/plugged')

" Stop making machine-recognizable syntax errors
Plug 'vim-syntastic/syntastic'

Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'davidbeckingsale/writegood.vim'
Plug 'vimoutliner/vimoutliner'
Plug 'tpope/vim-endwise'

" Language-specific plugins
Plug 'davidoc/taskpaper.vim'

Plug 'junegunn/vim-easy-align', {'for': 'markdown'}
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

" Initialize Plug system
call plug#end()
