# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/cuda/bin:/opt/nsight:/opt/spack/bin:$PATH
source $HOME/.oh-my-zsh/oh-my-zsh.sh
plugins=(git)

# backward word killer
bindkey '^H' backward-kill-word
# Locale BS
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ALIAS
alias vim=nvim
alias ls=exa

# ZPlug stuff
source ~/.zplug/init.zsh

# theme
zplug "geometry-zsh/geometry"
# QoL
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load
