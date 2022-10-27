#
# Provides terraform aliases and functions.
#
# Authors:
#   Vincent Tavernier <vince.tavernier@gmail.com>
#

# Return if terraform is not installed
if (( ! $+commands[terraform] )); then
  return 1
fi

# Load completion
if ! bashcompinit >/dev/null 2>&1; then
  autoload -Uz bashcompinit
  bashcompinit
fi

complete -o nospace -C /usr/bin/terraform terraform

# Load aliases
source "${0:h}/alias.zsh"
