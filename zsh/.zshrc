# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(fzf)
case "$OSTYPE" in
  darwin*)
    ZSH_THEME="kphoen"
  ;;
  linux*)
    ZSH_THEME="eastwood"
    plugins+=(extract)
  ;;
  dragonfly*|freebsd*|netbsd*|openbsd*)
    ZSH_THEME="eastwood"
  ;;
esac

# equivalent command with bfs
export FZF_DEFAULT_COMMAND="bfs -type f -follow -exclude -name .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND -exclude -name node_modules"

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor
if command -v vim >/dev/null 2>&1; then
  export EDITOR='vim'
fi 

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

source ~/.zsh_profile
[[ ! -f ~/.zsh_profile.local ]] || source ~/.zsh_profile.local

# fnm
eval "$(fnm env --use-on-cd)"
