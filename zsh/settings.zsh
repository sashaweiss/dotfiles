# History
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTFILE="$HOME/.zsh_history"

# Repeat `setopt` bc then it syntax-highlights
# if it's a valid option.
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history hist_verify

# Allows us to define a regex to define what
# gets saved to zsh history.
#
# Return non-zero for lines to ignore.
function zshaddhistory() {
  if [[ $1 = *"azcopy"* ]]; then
    # Ignore all azcopy lines
    return 1
  elif [[ $1 = " "* ]]; then
    # Ignore all lines starting with a space
    return 1
  fi
}
