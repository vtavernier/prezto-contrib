#
# Provides helm aliases and functions.
#
# Authors:
#   Vincent Tavernier <vince.tavernier@gmail.com>
#

# Return if helm is not installed
if (( ! $+commands[helm] )); then
  return 1
fi

# Load completion
source <(helm completion zsh)

# Load aliases
source "${0:h}/alias.zsh"
