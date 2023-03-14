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

# Load aliases
source "${0:h}/alias.zsh"

# Load completion
_functions=${0:a:h}/functions
fpath=($fpath $_functions)
if [[ -d $_functions ]]; then
  return 0
fi

mkdir -p $_functions

if (( $+commands[helm] )); then
  if [[ ! -f $_functions/_helm ]]; then
    helm completion zsh > $_functions/_helm
  fi
fi
