export EDITOR='vim'
export PAGER="less"
export PS1="\e[0;33m\w \e[m"

alias commit='git add . && git commit'
alias skere='astyle --indent=tab --pad-oper --pad-comma'

shopt -s extglob
shopt -s cmdhist
shopt -s histappend
shopt -s dotglob
shopt -s nocaseglob
shopt -s no_empty_cmd_completion

export PATH="$PATH:$HOME/.local/bin"
