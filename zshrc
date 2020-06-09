# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zmodload zsh/zprof

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
DEFAULT_USER="bugg123"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(osx extract docker kubectl kops helm jenv aws terraform golang)

# User configuration

# Add better curl to path

export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/games:/usr/sbin:/usr/bin:/usr/games:/sbin:/bin:/home/linuxbrew/.linuxbrew/opt/fzf/bin"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"

source $ZSH/oh-my-zsh.sh
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-256color

export EDITOR=vim
export POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
export AWS_SDK_LOAD_CONFIG=true

alias ss='gource --seconds-per-day 0.1 --follow-user "Corey Hinkle" --hide filenames,dirnames -f'

alias vi='vim'
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias clearDSstore='find . -type f -name ".DS_Store" exec rm -f {} \;'
alias share='mount_smbfs -N //guest:@192.168.120.10/FileShare ~/FileShare'
alias mega='mount_smbfs -N //guest:@192.168.120.11/FileShare ~/FileShare/Megatron'
alias bumble='mount_smbfs -N //guest:@192.168.120.10/FileShare ~/FileShare'
alias unshare='umount ~/FileShare'

alias core='~/Projects/core'
alias pr='open `git remote -vv | cut -f2 | cut -d " " -f1 | sed "s/.git/\/pull-requests/g"`'

alias gn='git number'
alias ga='git number add'
alias gc='git number checkout'
alias gd='git number diff'
alias gm='git merge'
alias gf='git fetch'
alias dev='git checkout dev'
alias gim='gn -c vim'
alias grm='gn -c rm'
alias gw='./gradlew'

alias tf='terraform'
alias tg='terragrunt'

alias ktok='export TOKEN=$(kubectl describe secret -n kube-system $(kubectl get secrets -n kube-system | grep default | cut -f1 -d " ") | grep -E "^token" | cut -f2 -d":" | tr -d "\t" | tr -d " ")'
alias kminiapi='export APISERVER=$(kubectl config view | rg -A1 ".minikube" | rg https | cut -f 2- -d ":" | tr -d " ")'
alias kg='k get'
alias kgn='kg nodes'
alias kd='kubectl describe'
alias kc='kubectl create'

alias zsource='. ~/.zshrc'
alias zmacs='emacs ~/.zshrc'
alias zim='vim ~/.zshrc'

fpath=(~/.zsh $fpath)
fpath=(/usr/local/share/zsh-completions $fpath)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"
zstyle ':urlglobber' url-other-schema
setopt no_rm_star_silent
setopt no_hist_verify

autoload -U compinit && compinit
# zprof

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/bugg123/google-cloud-sdk/path.zsh.inc' ]; then . '/home/bugg123/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/bugg123/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/bugg123/google-cloud-sdk/completion.zsh.inc'; fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
