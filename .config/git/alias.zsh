alias gs="git status --short"

alias gd="git diff --output-indicator-new=' ' --output-indicator-old=' '"

alias ga="git add ."
alias gc="git commit"

alias gp="git push"
alias gu="git pull"

# %h   commit hash
# %an  author name
# %ar  commit time
# %D   ref names
# %n   new line
# %s   commit message
alias gl="git log --all --graph --pretty=\
  --format=format:'%C(magenta)%h %C(white) %an   %ar%C(auto)   %D%n%s%n'"
alias gb="git branch"

alias gi="git init"
alias gcl="git clone"
