# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Theme - powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"
SOLARIZED_THEME="dark"

# Pathing
export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/bin/nvim
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export FINISHED="$HOME/Documents/Notes/finished/BTERM/"
export RANGER_LOAD_DEFAULT_RC=FALSE

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Plugin Management
plugins=(
	git 
	archlinux 
	zsh-vim-mode
	zsh-syntax-highlighting
	zsh-autosuggestions
        k
)

source $ZSH/oh-my-zsh.sh

# User configuration

 export VISUAL=/usr/bin/nvim
 export EDITOR=/usr/bin/nvim

# aliases
alias vi='nvim'
alias vim='nvim'
alias fetch='neofetch'
alias ra='ranger'
alias zshrc='nvim $HOME/.zshrc'
alias nvimrc='nvim $HOME/.config/nvim/init.vim'
alias termrc='nvim $HOME/.config/termite/config'
alias notes='cd $HOME/Documents/Notes'
alias noteup='./update.sh'
alias dev='cd $HOME/Dev'
alias cs='code $HOME/Dev/CS2223'
alias rbe='code $HOME/Dev/RBE2002'
alias dots='git --git-dir=/home/liam/.dots.git/ --work-tree=/home/liam'

# make a .rmd file with a filename of parameter given after alias call
alias makenote='f() {cp ~/Documents/Notes/rmd/template.rmd $1.rmd && vi $1.rmd};f'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
