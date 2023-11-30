
# complete partial commands from history with up & down keys
bind '"[A":history-search-backward'
bind '"[B":history-search-forward'

# update .bash_history in realtime
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Setup for the delightful github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# enable git completion, if the script is present
test -f ~/.git-completion.bash && . $_

export PS1="\u@\h:\W \t \\$ \[$(tput sgr0)\]"

source ~/.bashrc
