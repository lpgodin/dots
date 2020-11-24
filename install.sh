# remove old config files and create symlinks from repo
rm ~/.zshrc
rm -rf ~/.config/nvim ~/.config/neofetch ~/.config/termite

ln -s ~/dots/zshrc ~/.zshrc
ln -s ~/dots/config/nvim ~/.config/nvim

mkdir ~/.config/neofetch
ln -s ~/dots/config/neofetch/ascii.txt ~/.config/neofetch/ascii.txt
ln -s ~/dots/config/neofetch/config.conf ~/.config/neofetch/config.conf
ln -s ~/dots/config/neofetch/baphomet.txt ~/.config/neofetch/baphomet.txt

mkdir ~/.config/termite/
ln -s ~/dots/config/termite/config ~/.config/termite/config
