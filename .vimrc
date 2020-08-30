set nocompatible " original vi와 호환하지 않음
set t_Co=256 "256 colors in vim
set number " line number
set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab  " On pressing tab, insert 4 spaces
set pastetoggle=<F2> " toggles paste on, off

syntax enable
filetype plugin on
highlight Comment term=bold cterm=bold ctermfg=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'preservim/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'pearofducks/ansible-vim'
Plugin 'hashivim/vim-terraform'

call vundle#end()

" for jellybeans
colorschem jellybeans

" for indent-guides 
" https://github.com/nathanaelkane/vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_auto_color_change_percent = 10

" for ansible-vim
au BufRead,BufNewFile *.yml set filetype=yaml.ansible

" for vim-terraform
au BufRead,BufNewFile *.tf.* set filetype=terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1
