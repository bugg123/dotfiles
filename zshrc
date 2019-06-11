# zmodload zsh/zprof

# Path to your oh-my-zsh installation.
export ZSH=/Users/corey/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="coreyhinkle"
DEFAULT_USER="corey"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew osx extract zsh-autosuggestions docker kubectl kops helm kube-ps1 jenv gradle aws)

# User configuration

export PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin"
export PATH="/usr/local/sbin:$PATH"
# Add better curl to path
export PATH="/usr/local/opt/curl/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-256color

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$PATH:/Library/Graal/graalvm-ce-1.0.0-rc13/Contents/Home/bin"
export GRAALVM_HOME="/Library/Graal/graalvm-ce-1.0.0-rc13/Contents/Home/"

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

#export M2_HOME=/usr/local/apache-maven/apache-maven-3.1.1
#export M2=$M2_HOME/bin
#export PATH=/usr/local/bin:$PATH:$M2
export EDITOR=vim
export HOMEBREW_GITHUB_API_TOKEN=99088eaa315f2701bb9599157051a0983adba16c

#export JAVA_6_HOME=/System/Library/Frameworks/JavaVM.framework/Home
#export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
#export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
#export JAVA_HOME=$JAVA_8_HOME

export FINDBUGS_HOME=/usr/local/Cellar/findbugs/3.0.1/libexec

#alias java6='export JAVA_HOME=$JAVA_6_HOME'
#alias java7='export JAVA_HOME=$JAVA_7_HOME'
#alias java8='export JAVA_HOME=$JAVA_8_HOME'

alias ss='gource --seconds-per-day 0.1 --follow-user "Corey Hinkle" --hide filenames,dirnames -f'

alias vi='vim'
alias g='git'
#alias emacs='open -a /Applications/Emacs.app $1'
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias clearDSstore='find . -type f -name ".DS_Store" exec rm -f {} \;'
alias dc2f='. ~/Scripts/dc2f.sh'
alias jira='. ~/Scripts/jira.sh'
alias pyserv='python -m SimpleHTTPServer 8000'
alias share='mount_smbfs -N //guest:@192.168.120.10/FileShare ~/FileShare'
alias mega='mount_smbfs -N //guest:@192.168.120.11/FileShare ~/FileShare/Megatron'
alias bumble='mount_smbfs -N //guest:@192.168.120.10/FileShare ~/FileShare'
alias unshare='umount ~/FileShare'

alias core='~/Projects/core'
alias pr='open `git remote -vv | cut -f2 | cut -d " " -f1 | sed "s/.git/\/pull-requests/g"`'
alias kafkaUp='docker-compose -f ~/Scripts/kafka-compose.yml up -dV'
alias kafkaDown='docker-compose -f ~/Scripts/kafka-compose.yml down'
alias kongUp='docker-compose -f ~/Scripts/kong-compose.yml up -dV'
alias kongDown='docker-compose -f ~/Scripts/kong-compose.yml down'


alias gn='git number'
alias ga='git number add'
alias gc='git number checkout'
alias gd='git number diff'
alias gm='git merge'
alias gf='git fetch'
alias dev='git checkout dev'
alias gmacs='gn -c emacs'
alias gim='gn -c vim'
alias grm='gn -c rm'
alias gw='./gradlew'

alias ktok='export TOKEN=$(kubectl describe secret -n kube-system $(kubectl get secrets -n kube-system | grep default | cut -f1 -d " ") | grep -E "^token" | cut -f2 -d":" | tr -d "\t" | tr -d " ")'
alias kminiapi='export APISERVER=$(kubectl config view | rg -A1 ".minikube" | rg https | cut -f 2- -d ":" | tr -d " ")'
alias kgn='kg nodes'
alias kd='kubectl describe'
alias kc='kubectl create'

alias zsource='. ~/.zshrc'
alias zmacs='emacs ~/.zshrc'
alias zim='vim ~/.zshrc'

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
eval "$(rbenv init -)"

fpath=(~/.zsh $fpath)
fpath=(/usr/local/share/zsh-completions $fpath)

source /Users/corey/.zsh/zsh-git-prompt/zshrc.sh
export GIT_PROMPT_EXECUTABLE="haskell"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

eval "$(direnv hook zsh)"
zstyle ':urlglobber' url-other-schema
setopt no_rm_star_silent
setopt no_hist_verify

autoload -U compinit && compinit

# autoload -U +X bashcompinit && bashcompinit

