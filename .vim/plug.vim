call plug#begin('~/.vim/plugged')

" Stop making machine-recognizable syntax errors
Plug 'scrooloose/syntastic'

Plug 'Raimondi/delimitMate'
Plug 'acustodioo/vim-tmux'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'davidbeckingsale/writegood.vim'
Plug 'jakykong/vim-zim'
Plug 'tpope/vim-endwise'

" Language-specific plugins
Plug 'tpope/vim-haml'
Plug 'yosssi/vim-ace'
Plug 'keith/swift.vim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" There's a nice Plug that keeps your TF code looking pretty
Plug 'hashivim/vim-terraform' " Terraform
" Run terraform fmt on save - instead of whenever you remember to run it ;-)
let g:terraform_fmt_on_save=1
" Initialize Plug system
call plug#end()
