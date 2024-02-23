alias ll='ls -lah'
alias cht.sh="$HOME/.config/zsh/cht.sh"
export EDITOR='nvim'

### fzf
source $HOME/.config/zsh/fzf.zsh

### theme
source $HOME/.config/zsh/git.zsh
source $HOME/.config/zsh/theme-and-appearance.zsh
source $HOME/.config/zsh/ys.zsh-theme
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/.oh-my-zsh/zsh_conf.zsh

### go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin

### nvim
alias vim='nvim'
# export PATH="$PATH:$HOME/.config/lua-language-server/bin/macOS"
# export CPPFLAGS="-I/usr/local/opt/llvm/include"
# export LDFLAGS="-L/usr/local/opt/llvm/lib"
# export PATH="$PATH:/usr/local/opt/llvm/bin"
# LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export PATH="$PATH:$HOME/.local/bin"

### network
alias proxy='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890'
# alias proxy_on_U='export all_proxy=socks5://127.0.0.1:1080'
alias unproxy='unset all_proxy'
# export http_proxy=socks5://127.0.0.1:1080
# export https_proxy=socks5://127.0.0.1:1080
#
# git config -global http.proxy 'socks5://127.0.0.1:1080'
alias git_proxy_on='git config --global http.proxy "http://127.0.0.1:1080"; git config --global https.proxy "https://127.0.0.1:1080"'
alias git_proxy_off='git config --global --unset http.proxy; git config --global --unset https.proxy'

# alias dv='networksetup -setairportnetwork en0 We_R_Family_5G'

### nnn
export PATH="$PATH:$HOME/.config/nnn/bin"

export NNN_BMS="e:$HOME/.config/;d:$HOME/Downloads/;c:~/Downloads/.code/;g:~/Downloads/GitHub/;s:/usr/local/go"
export NNN_COLORS='4321'
export NNN_FIFO='/tmp/nnn.fifo'
export NNN_TMPFILE='/tmp/.lastd'
export NNN_SEL='/tmp/.sel'
export NNN_PLUG='j:autojump;p:preview-tui;f:fzcd;k:pskill;e:suedit'

alias nnn='nnn -dHe'
# alias nnn='nnn -dHe'
alias nd='source /tmp/.lastd'

### yazi
function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

### joshuto
function jo() {
	ID="$$"
	mkdir -p /tmp/$USER
	OUTPUT_FILE="/tmp/$USER/joshuto-cwd-$ID"
	env joshuto --output-file "$OUTPUT_FILE" $@
	exit_code=$?

	case "$exit_code" in
		# regular exit
		0)
			;;
		# output contains current directory
		101)
			JOSHUTO_CWD=$(cat "$OUTPUT_FILE")
			cd "$JOSHUTO_CWD"
			;;
		# output selected files
		102)
			;;
		*)
			echo "Exit code: $exit_code"
			;;
	esac
}

### sketchybar
function brew() {
  command brew "$@" 

  if [[ $* =~ "upgrade" ]] || [[ $* =~ "update" ]] || [[ $* =~ "outdated" ]]; then
    sketchybar --trigger brew_update
  fi
}
