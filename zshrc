autoload U colors && colors # make colors available

### oh-my-zsh config ###
# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="" # now using starship 🚀

# Update oh-my-zsh
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 60 # update omz every 60 days

# Disable marking untracked files under VCS as dirty
# This makes repository status check for large repositories much, much faster
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins to load
# * keep zsh-syntax-highlighting at last
plugins=(
you-should-use
git
zsh-autosuggestions
sudo # press <ESC> twice to run the last command with sudo
extract
gpg-agent
command-not-found
zsh-syntax-highlighting
)

# zsh-completions config
# adding it as a regular omz plugin will not work properly
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"

builtin source $ZSH/oh-my-zsh.sh # compinit is called here

### normal config ###
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/xu-minghao/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/xu-minghao/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/xu-minghao/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/xu-minghao/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# bat config
export BAT_CONFIG_PATH="$HOME/bat.conf"
export MANPAGER="sh -c 'col -bx | batcat -l man -p'" # set syntax-highlighting for man using bat

# fzf config
builtin source /usr/share/doc/fzf/examples/key-bindings.zsh
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--exact --cycle'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--height 100% --preview-window wrap --preview 'batcat --force-colorization --style="plain" --line-range :100 {}'"

export FZF_ALT_C_COMMAND='fd --type d --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_ALT_C_OPTS="--height 100% --preview 'tree -C {} | head -50'"

# Fix gpg signing
# export GPG_TTY=$(tty)

# zoxide initalization
eval "$(zoxide init zsh --cmd cd)" # override cd

### Aliases ###
[[ -f "$HOME/.dotfiles/aliases.zsh" ]] && builtin source "$HOME/.dotfiles/aliases.zsh" 

### Functions ###
[[ -f "$HOME/.dotfiles/functions.zsh" ]] && builtin source "$HOME/.dotfiles/functions.zsh"

# Init startship prompt, keep at the bottom of this file
eval "$(starship init zsh)"
