set nocompatible " Use Vim defaults
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" It's good to keep Vundle up to date                                                                                                                                                                                                    
Plugin 'gmarik/vundle'

" Stop making machine-recognizable syntax errors
Plugin 'scrooloose/syntastic'

Plugin 'Raimondi/delimitMate'
Plugin 'acustodioo/vim-tmux'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'davidbeckingsale/writegood.vim'
Plugin 'mutewinter/nginx.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
" Plugin 'vimwiki/vimwiki'

" There's a nice plugin that keeps your TF code looking pretty
Plugin 'hashivim/vim-terraform' " Terraform
" Run terraform fmt on save - instead of whenever you remember to run it ;-)
let g:terraform_fmt_on_save=1
