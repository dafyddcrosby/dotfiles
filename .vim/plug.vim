call plug#begin('~/.vim/plugged')

" Stop making machine-recognizable syntax errors
Plug 'scrooloose/syntastic'

Plug 'Raimondi/delimitMate'
Plug 'acustodioo/vim-tmux'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'davidbeckingsale/writegood.vim'
Plug 'vimoutliner/vimoutliner'
" Plug 'jakykong/vim-zim'
Plug 'tpope/vim-endwise'

" Language-specific plugins
Plug 'tpope/vim-haml'
Plug 'keith/swift.vim'
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave=1
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" There's a nice Plug that keeps your TF code looking pretty
Plug 'hashivim/vim-terraform' " Terraform
" Run terraform fmt on save - instead of whenever you remember to run it ;-)
let g:terraform_fmt_on_save=1

Plug 'junegunn/vim-easy-align', {'for': 'markdown'}
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

let g:snips_author="David Crosby"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --go-completer --rust-completer' }

let g:UltiSnipsExpandTrigger="<tab>"
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

let g:ycm_filetype_blacklist = {
      \ 'gitcommit': 1,
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'leaderf': 1,
      \ 'votl': 1,
      \ 'mail': 1
      \}

" Initialize Plug system
call plug#end()
