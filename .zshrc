# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Theme - powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"
SOLARIZED_THEME="light"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Plugin Management
plugins=(
	git 
	archlinux 
	zsh-vim-mode
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi
# aliases
alias vi='nvim'
alias vim='nvim'
alias zshrc='nvim ~/.zshrc'
alias notes='cd ~/Documents/Notes'
alias fetch='neofetch'
alias sigma='cd ~/sigmapi/sigmapi-web/sigmapiweb'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias cs='cd ~/IdeaProjects/CS2223'
alias planner='vi ~/Documents/dailyplanner.md'

function cd_up() {
	cd $(printf "%0.s../" $(seq 1 $1 ));
}
alias 'cd.. '='cd_up'

export EDITOR='nvim'
export VISUAL='nvim'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
