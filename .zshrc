# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

export EDITOR='nvim'

source ~/.oh-my-zsh/zsh_conf.zsh
source ~/go/go_conf.zsh
source ~/.vim/vim_conf.zsh
source ~/.config/zsh/config.zsh

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"

