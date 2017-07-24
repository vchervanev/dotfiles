set -g theme_newline_cursor yes
alias vim "mvim -v"
alias be "bundle exec"
alias up "cd .."
alias fff "fzf | tr -d '\n' | pbcopy"
set PATH $PATH ~/go/bin

status --is-interactive; and source (rbenv init -|psub)
