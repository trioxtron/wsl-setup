HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

unsetopt BEEP

alias la="ls -la"
alias ..="cd .."
alias apt="sudo apt"
alias svim="sudo vim"
alias ports="netstat -tulanp"
alias gopi="ssh pi@192.168.2.113"
alias explorer="explorer.exe"
alias su="sudo -i"
alias kansi="ansible-playbook -K"
alias c="clear"

cd

eval "$(starship init zsh)"

source ~/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen apply

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/root/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
