# rc_files
# create .vimrc
echo source ~/rc_files/.vimrc > ~/.vimrc

# create .bash_profile
echo source ~/rc_files/.bash_profile > ~/.bash_profile

# setup vim vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install vim plugins
vim +PluginInstall +qall
