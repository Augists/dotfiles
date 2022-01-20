alias proxy_on='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890'
alias proxy_on_U='export all_proxy=socks5://127.0.0.1:1080'
alias proxy_off='unset all_proxy'
# export http_proxy=socks5://127.0.0.1:1080
# export https_proxy=socks5://127.0.0.1:1080
#
# git config -global http.proxy 'socks5://127.0.0.1:1080'
alias git_proxy_on='git config --global http.proxy "http://127.0.0.1:1080"; git config --global https.proxy "https://127.0.0.1:1080"'
alias git_proxy_off='git config --global --unset http.proxy; git config --global --unset https.proxy'

alias eda='source /Users/zhangyichi/.config/zsh/network.sh'
alias eda_out='~/Downloads/GitHub/dlut-eda-login/dlut_eda_login.sh -o'

alias dv='networksetup -setairportnetwork en0 We_R_Family_5G'
