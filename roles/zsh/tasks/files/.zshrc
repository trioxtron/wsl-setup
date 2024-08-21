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

alias la="ls -lah"
alias ..="cd .."
alias apt="sudo apt"
alias svim="sudo vim"
alias ports="netstat -tulanp"
alias gopi="ssh pi@192.168.2.113"
alias explorer="explorer.exe"
alias su="sudo -i"
alias c="clear"
alias py="python3"

alias vim="nvim"
alias n="nvim"

cd

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source ~/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/root/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/noah/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/noah/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/noah/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/noah/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

PATH="$PATH:/home/joker/.local/bin"
PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"

# Start with tmux
[[ ! -v TMUX ]] && tmux
