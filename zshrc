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
DEFAULT_USER="corey"

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
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin"
export PATH="/usr/local/sbin:$PATH"
# Add better curl to path
#export PATH="/usr/local/opt/curl/bin:$PATH"
# Add GO bin to path
export PATH="$PATH:$HOME/go/bin"
# Add the GNU utitlities to my path
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$PATH:/Library/Graal/graalvm-ce-1.0.0-rc13/Contents/Home/bin"
export PATH="${PATH}:${HOME}/.krew/bin"

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'


export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-256color

export EDITOR=nvim
export HOMEBREW_GITHUB_API_TOKEN=85fa9ed5daee3b1695930fac0b035981550a0ebf
export POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
export AWS_SDK_LOAD_CONFIG=true

alias ss='gource --seconds-per-day 0.1 --follow-user "Corey Hinkle" --hide filenames,dirnames -f'

alias vi='nvim'
alias vim='nvim'
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
alias gs='git switch'
alias gd='git number diff'
alias gm='git merge'
alias gf='git fetch'
alias gr='cd `git rev-parse --show-toplevel`'
alias gim='gn -c nvim'
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
alias kctx='kubectx'
alias kns='kubens'

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
