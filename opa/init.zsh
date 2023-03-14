#
# Provides open-policy-agent aliases and functions.
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

if (( $+commands[opa] )); then
  if [[ ! -f $_functions/_opa ]]; then
    opa completion zsh > $_functions/_opa
  fi
fi

if (( $+commands[conftest] )); then
  if [[ ! -f $_functions/_conftest ]]; then
    conftest completion zsh > $_functions/_conftest
  fi
fi
