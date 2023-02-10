#
# Provides terragrunt aliases and functions.
#
# Authors:
#   Vincent Tavernier <vince.tavernier@gmail.com>
#

# Return if terragrunt is not installed
if (( ! $+commands[terragrunt] )); then
  return 1
fi

# Load aliases
source "${0:h}/alias.zsh"
