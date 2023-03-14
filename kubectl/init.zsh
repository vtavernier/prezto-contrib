#
# Provides kubectl aliases and functions.
#
# Authors:
#   Vincent Tavernier <vince.tavernier@gmail.com>
#
# Original source:
#   https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectl
#

# Return if kubectl is not installed
if (( ! $+commands[kubectl] )); then
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

if (( $+commands[kubectl] )); then
  if [[ ! -f $_functions/_kubectl ]]; then
    kubectl completion zsh > $_functions/_kubectl
  fi
fi
