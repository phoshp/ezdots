# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="powerlevel10k"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/oh-my-zsh.sh

# User configuration
alias l='exa -l  --icons'
alias ls='exa -1  --icons'
alias ll='exa -la --icons'
alias ld='exa -lD --icons'

alias in='sudo pacman -S' # install package
alias un='sudo pacman -Rns' # uninstall package
alias up='sudo pacman -Syu' # update system/package/aur
alias pl='pacman -Qs' # list installed package
alias pa='pacman -Ss' # list availabe package
alias pc='sudo pacman -Sc' # remove unused cache
alias po='pacman -Qtdq | sudo pacman -Rns -' # remove unused packages, also try > pacman -Qqd | pacman -Rsu --print -
alias vc='code'  # gui code editor
alias vi='nvim'

export VISUAL=nvim
export EDITOR=nvim
export PATH="$HOME/.config/emacs/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export BROWSER="firefox"
export NNN_FIFO='/tmp/nnn.fifo'

if [ "$(tty)" = "/dev/tty1" ];then
	exec dbus-launch sway
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias n='nnn -HQxe'
alias ch='chmod +x'

PS1='[\u@\h \W]\$ '

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#source /home/emre/.config/broot/launcher/bash/br

# bun completions
#[ -s "/home/emre/.bun/_bun" ] && source "/home/emre/.bun/_bun"

# bun
#export BUN_INSTALL="$HOME/.bun"
#export PATH="$BUN_INSTALL/bin:$PATH"

bindkey '^ ' autosuggest-accept
bindkey -s '^f' 'tmux-sessionizer^M'
bindkey -s '^w' 'n^M'
