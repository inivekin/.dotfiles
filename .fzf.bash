# Setup fzf
# ---------
if [[ ! "$PATH" == */home/inivekin/.fzf/bin* ]]; then
  export PATH="$PATH:/home/inivekin/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/inivekin/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/inivekin/.fzf/shell/key-bindings.bash"

