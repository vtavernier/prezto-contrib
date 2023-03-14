#
# Provides open-policy-agent aliases and functions.
#
# Authors:
#   Vincent Tavernier <vince.tavernier@gmail.com>
#

if (( $+commands[opa] )); then
  source <(opa completion zsh)
fi

if (( $+commands[conftest] )); then
  source <(conftest completion zsh)
fi
