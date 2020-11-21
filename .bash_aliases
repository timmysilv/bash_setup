# general aliases
alias     c='clear'
alias     s='screen'
alias    fg='fg &>/dev/null'
alias   lsd='ls -hAlt --group-directories-first --color=auto'
alias    py='python3'
alias    mk='make -j 4'
alias    hs='c && cat ~/.screenhelp'

# git
alias     g='git'
alias    ga='g add .'
alias    gp='g push'
alias   gss='g status'
alias   gcm='g commit -m'
alias   gdf='g difftool --tool=vimdiff --no-prompt'
alias   cdg='cd $(g rev-parse --show-toplevel)'

# vim and files
alias     v='vim'
alias   vrc='v ~/.vimrc'
alias   vba='v ~/.bash_aliases'
alias   sba='source ~/.bash_aliases'

# functions

# split a variable on the ':' delimiter
function pp() {
    tr ':' '\n' <<< $(printenv $1)
}

# convert string to list, save in $ret
function str_to_list() {
    ret=($(echo "$1" | tr '\n' ' '))
}
