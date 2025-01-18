# FILE AUTOMATICALLY GENERATED FROM /home/augists/.config/zsh/zimrc
# EDIT THE SOURCE FILE AND THEN RUN zimfw build. DO NOT DIRECTLY EDIT THIS FILE!

if [[ -e ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]] zimfw() { source "${HOME}/.config/zsh/.zim/zimfw.zsh" "${@}" }
fpath=("${HOME}/.config/zsh/.zim/modules/git-info/functions" "${HOME}/.config/zsh/.zim/modules/duration-info/functions" "${HOME}/.config/zsh/.zim/modules/prompt-pwd/functions" "${HOME}/.config/zsh/.zim/modules/zsh-completions/src" "${HOME}/.config/zsh/.zim/modules/pacman/functions" ${fpath})
autoload -Uz -- coalesce git-action git-info duration-info-precmd duration-info-preexec prompt-pwd
source "${HOME}/.config/zsh/.zim/modules/duration-info/init.zsh"
source "${HOME}/.config/zsh/.zim/modules/bira/bira.zsh-theme"
source "${HOME}/.config/zsh/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${HOME}/.config/zsh/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${HOME}/.config/zsh/.zim/modules/pacman/init.zsh"
