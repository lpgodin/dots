# remove old config files and create symlinks from repo
cd ~
rm .zshrc .config/nvim/init.vim .config/neofetch/* .config/termite/config

ln -s dots/.zshrc .zshrc
ln -s dots/.config/nvim/init.vim .config/nvim/init.vim
ln -s dots/.config/neofetch/config.conf .config/neofetch/config.conf

ln -s dots/.config/neofetch/baphomet.txt .config/neofetch/
ln -s dots/.config/neofetch/ascii.txt .config/neofetch/

ln -s dots/.config/termite/config .config/termite
