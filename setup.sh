touch ~/dotfiles/setup.sh
chmod +x ~/dotfiles/setup.sh






cp ~/dotfiles/vim-config/.vimrc ~/.vimrc

if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall
