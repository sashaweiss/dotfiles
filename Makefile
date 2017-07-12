clean:
	rm ~/.zprofile
	rm ~/.zshrc
	rm ~/.ideavimrc
	rm ~/.gitconfig
	rm ~/.ssh/config
	rm ~/.tmux.conf
	rm ~/.vimrc
	rm -rf ~/.oh-my-zsh
	rm -rf ~/.vim

install_plugins:
	# oh-my-zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	# VimPlug
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

link:
	ln -s ~/dotfiles/zprofile ~/.zprofile
	ln -s ~/dotfiles/zshrc ~/.zshrc
	ln -s ~/dotfiles/ideavimrc ~/.ideavimrc
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
	ln -s ~/dotfiles/ssh_config ~/.ssh/config
	ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
	ln -s ~/dotfiles/vimrc ~/.vimrc

install: clean install_plugins link

