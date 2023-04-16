#
# Provides knative cli (kn) aliases and functions.
#
# Authors:
#   Vincent Tavernier <vince.tavernier@gmail.com>
#

_functions=${0:a:h}/functions
fpath=($fpath $_functions)
if [[ -d $_functions ]]; then
  return 0
fi

mkdir -p $_functions

if (( $+commands[kn] )); then
  if [[ ! -f $_functions/_kn ]]; then
    kn completion zsh > $_functions/_kn
  fi
fi
