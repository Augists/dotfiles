CONFIG_DIR="$HOME/.config"
ZSH_CONFIG_DIR="$HOME/.config/zsh"

source ${CONFIG_DIR}/nnn/nnn_conf.zsh

source ${ZSH_CONFIG_DIR}/network.zsh
source ${ZSH_CONFIG_DIR}/fzf.zsh
source ${ZSH_CONFIG_DIR}/python.zsh

alias cht.sh="$ZSH_CONFIG_DIR/cht.sh"

alias ll='ls -lah'
