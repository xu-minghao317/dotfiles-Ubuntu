# Setup fzf
# ---------
if [[ ! "$PATH" == */home/kevin/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/kevin/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/kevin/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/kevin/.fzf/shell/key-bindings.zsh"
