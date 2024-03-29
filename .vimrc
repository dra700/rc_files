set nocompatible " original vi와 호환하지 않음
set t_Co=256 "256 colors in vim
set number " line number
set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab  " On pressing tab, insert 4 spaces
set pastetoggle=<F2> " toggles paste on, off
set updatetime=100 " for vim-gitgutter update time (1 seconds)

syntax enable
filetype plugin on
highlight Comment term=bold cterm=bold ctermfg=4

" disable arrow and pageup, pagedown keys
for key in ['<Up>', '<Down>', '<Left>', '<Right>', '<PageUp>', '<PageDown>']
    exec 'noremap' key '<Nop>'
    exec 'inoremap' key '<Nop>'
    exec 'cnoremap' key '<Nop>'
endfor

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " vim plugin manager (exe :PluginInstall)
Plugin 'nanotech/jellybeans.vim' " colorful, dark color scheme, inspired by ir_black and twilight
Plugin 'preservim/nerdtree' " file system explorer for vim
Plugin 'majutsushi/tagbar' " browse tags of the current file and get an overview of its structure
Plugin 'nathanaelkane/vim-indent-guides' " plugin for visually displaying indent levels in vim
Plugin 'airblade/vim-gitgutter' " plugin for git diff in the sign column (added, modified and removed lines)
Plugin 'tpope/vim-fugitive' " plugin for git command (e.g. Gdiff)
Plugin 'vim-airline/vim-airline' " vim status bar
Plugin 'vim-airline/vim-airline-themes' " vim status bar themes
Plugin 'pearofducks/ansible-vim' " vim syntax plugin for ansible 2.x, it supports YAL playbooks, Jinja2 templates, and ansible hosts files
Plugin 'hashivim/vim-terraform' " vim syntax plugin for terraform
Plugin 'google/vim-jsonnet' " vim syntax plugin for jsonnet

call vundle#end()

" for jellybeans
colorschem jellybeans

" for nerdtree
" nerdtree show hiddens
let NERDTreeShowHidden=1

" nerdtree shortcut
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" for tagbar
nmap <F8> :Tagbar<CR>

" for indent-guides 
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_start_size=1
let g:indentguides_spacechar='┆'
let g:indentguides_tabchar='|'
let g:indentguides_guide_size=1

" for vim-airline
let g:airline#extensions#tabline#enabled=1 " turn on buffer list
let g:airline#extensions#whitespace#enabled=0 " turn off trailing section
let g:airline_theme='raven' " airline theme
set laststatus=2 " turn on bottom bar
let mapleader=","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" for ansible-vim
let g:ansible_name_highlight='d'
let g:ansible_unindent_after_newline=1
au BufRead,BufNewFile *.yml set filetype=yaml.ansible

" for vim-terraform
let g:terraform_align=1
au BufRead,BufNewFile *.tf.* set filetype=terraform
