if (( ! $+commands[git-branchless] )); then
  return 1
fi

alias git='git-branchless wrap --'

# Load completion
_functions=${0:a:h}/functions
fpath+=($_functions)
