# remove old config files and create symlinks from repo
rm ~/.zshrc ~/.config/termite/config
rm -rf ~/.config/nvim .config/neofetch

ln -s ~/dots/zshrc ~/.zshrc
ln -s ~/dots/config/nvim ~/.config/nvim
ln -s ~/dots/config/neofetch ~/.config/neofetch

ln -s ~/dots/config/termite/config ~/.config/termite/config
