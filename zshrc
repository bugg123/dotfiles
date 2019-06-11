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

setopt no_rm_star_silent
setopt no_hist_verify

#source ~/.git-completion.zsh
#autoload -Uz compinit
#if [[ -n ${ZDOTDIR:-${HOME}}/$ZSH_COMPDUMP(#qN.mh+24) ]]; then
#	compinit -d $ZSH_COMPDUMP;
#else
#	compinit -C;
#fi;

autoload -U compinit && compinit
# Copyright 2016 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# __kubectl_bash_source() {
#	alias shopt=':'
#	alias _expand=_bash_expand
#	alias _complete=_bash_comp
#	emulate -L sh
#	setopt kshglob noshglob braceexpand
#
#	source "$@"
#}
#
#__kubectl_type() {
#	# -t is not supported by zsh
#	if [ "$1" == "-t" ]; then
#		shift
#
#		# fake Bash 4 to disable "complete -o nospace". Instead
#		# "compopt +-o nospace" is used in the code to toggle trailing
#		# spaces. We don't support that, but leave trailing spaces on
#		# all the time
#		if [ "$1" = "__kubectl_compopt" ]; then
#			echo builtin
#			return 0
#		fi
#	fi
#	type "$@"
#}
#
#__kubectl_compgen() {
#	local completions w
#	completions=( $(compgen "$@") ) || return $?
#
#	# filter by given word as prefix
#	while [[ "$1" = -* && "$1" != -- ]]; do
#		shift
#		shift
#	done
#	if [[ "$1" == -- ]]; then
#		shift
#	fi
#	for w in "${completions[@]}"; do
#		if [[ "${w}" = "$1"* ]]; then
#			echo "${w}"
#		fi
#	done
#}
#
#__kubectl_compopt() {
#	true # don't do anything. Not supported by bashcompinit in zsh
#}
#
#__kubectl_declare() {
#	if [ "$1" == "-F" ]; then
#		whence -w "$@"
#	else
#		builtin declare "$@"
#	fi
#}
#
#__kubectl_ltrim_colon_completions()
#{
#	if [[ "$1" == *:* && "$COMP_WORDBREAKS" == *:* ]]; then
#		# Remove colon-word prefix from COMPREPLY items
#		local colon_word=${1%${1##*:}}
#		local i=${#COMPREPLY[*]}
#		while [[ $((--i)) -ge 0 ]]; do
#			COMPREPLY[$i]=${COMPREPLY[$i]#"$colon_word"}
#		done
#	fi
#}
#
#__kubectl_get_comp_words_by_ref() {
#	cur="${COMP_WORDS[COMP_CWORD]}"
#	prev="${COMP_WORDS[${COMP_CWORD}-1]}"
#	words=("${COMP_WORDS[@]}")
#	cword=("${COMP_CWORD[@]}")
#}
#
#__kubectl_filedir() {
#	local RET OLD_IFS w qw
#
#	__debug "_filedir $@ cur=$cur"
#	if [[ "$1" = \~* ]]; then
#		# somehow does not work. Maybe, zsh does not call this at all
#		eval echo "$1"
#		return 0
#	fi
#
#	OLD_IFS="$IFS"
#	IFS=$'\n'
#	if [ "$1" = "-d" ]; then
#		shift
#		RET=( $(compgen -d) )
#	else
#		RET=( $(compgen -f) )
#	fi
#	IFS="$OLD_IFS"
#
#	IFS="," __debug "RET=${RET[@]} len=${#RET[@]}"
#
#	for w in ${RET[@]}; do
#		if [[ ! "${w}" = "${cur}"* ]]; then
#			continue
#		fi
#		if eval "[[ \"\${w}\" = *.$1 || -d \"\${w}\" ]]"; then
#			qw="$(__kubectl_quote "${w}")"
#			if [ -d "${w}" ]; then
#				COMPREPLY+=("${qw}/")
#			else
#				COMPREPLY+=("${qw}")
#			fi
#		fi
#	done
#}
#
#__kubectl_quote() {
#    if [[ $1 == \'* || $1 == \"* ]]; then
#        # Leave out first character
#        printf %q "${1:1}"
#    else
#    	printf %q "$1"
#    fi
#}

autoload -U +X bashcompinit && bashcompinit

# use word boundary patterns for BSD or GNU sed
LWORD='[[:<:]]'
RWORD='[[:>:]]'
if sed --help 2>&1 | grep -q GNU; then
	LWORD='\<'
	RWORD='\>'
fi

__kubectl_convert_bash_to_zsh() {
	sed \
	-e 's/declare -F/whence -w/' \
	-e 's/local \([a-zA-Z0-9_]*\)=/local \1; \1=/' \
	-e 's/flags+=("\(--.*\)=")/flags+=("\1"); two_word_flags+=("\1")/' \
	-e 's/must_have_one_flag+=("\(--.*\)=")/must_have_one_flag+=("\1")/' \
	-e "s/${LWORD}_filedir${RWORD}/__kubectl_filedir/g" \
	-e "s/${LWORD}_get_comp_words_by_ref${RWORD}/__kubectl_get_comp_words_by_ref/g" \
	-e "s/${LWORD}__ltrim_colon_completions${RWORD}/__kubectl_ltrim_colon_completions/g" \
	-e "s/${LWORD}compgen${RWORD}/__kubectl_compgen/g" \
	-e "s/${LWORD}compopt${RWORD}/__kubectl_compopt/g" \
	-e "s/${LWORD}declare${RWORD}/__kubectl_declare/g" \
	-e "s/\\\$(type${RWORD}/\$(__kubectl_type/g" \
	<<'BASH_COMPLETION_EOF'
# bash completion for s2i                                  -*- shell-script -*-

__debug()
{
    if [[ -n ${BASH_COMP_DEBUG_FILE} ]]; then
        echo "$*" >> "${BASH_COMP_DEBUG_FILE}"
    fi
}

# Homebrew on Macs have version 1.3 of bash-completion which doesn't include
# _init_completion. This is a very minimal version of that function.
__my_init_completion()
{
    COMPREPLY=()
    _get_comp_words_by_ref "$@" cur prev words cword
}

__index_of_word()
{
    local w word=$1
    shift
    index=0
    for w in "$@"; do
        [[ $w = "$word" ]] && return
        index=$((index+1))
    done
    index=-1
}

__contains_word()
{
    local w word=$1; shift
    for w in "$@"; do
        [[ $w = "$word" ]] && return
    done
    return 1
}

__handle_reply()
{
    __debug "${FUNCNAME[0]}"
    case $cur in
        -*)
            if [[ $(type -t compopt) = "builtin" ]]; then
                compopt -o nospace
            fi
            local allflags
            if [ ${#must_have_one_flag[@]} -ne 0 ]; then
                allflags=("${must_have_one_flag[@]}")
            else
                allflags=("${flags[*]} ${two_word_flags[*]}")
            fi
            COMPREPLY=( $(compgen -W "${allflags[*]}" -- "$cur") )
            if [[ $(type -t compopt) = "builtin" ]]; then
                [[ "${COMPREPLY[0]}" == *= ]] || compopt +o nospace
            fi

            # complete after --flag=abc
            if [[ $cur == *=* ]]; then
                if [[ $(type -t compopt) = "builtin" ]]; then
                    compopt +o nospace
                fi

                local index flag
                flag="${cur%%=*}"
                __index_of_word "${flag}" "${flags_with_completion[@]}"
                if [[ ${index} -ge 0 ]]; then
                    COMPREPLY=()
                    PREFIX=""
                    cur="${cur#*=}"
                    ${flags_completion[${index}]}
                    if [ -n "${ZSH_VERSION}" ]; then
                        # zfs completion needs --flag= prefix
                        eval "COMPREPLY=( \"\${COMPREPLY[@]/#/${flag}=}\" )"
                    fi
                fi
            fi
            return 0;
            ;;
    esac

    # check if we are handling a flag with special work handling
    local index
    __index_of_word "${prev}" "${flags_with_completion[@]}"
    if [[ ${index} -ge 0 ]]; then
        ${flags_completion[${index}]}
        return
    fi

    # we are parsing a flag and don't have a special handler, no completion
    if [[ ${cur} != "${words[cword]}" ]]; then
        return
    fi

    local completions
    completions=("${commands[@]}")
    if [[ ${#must_have_one_noun[@]} -ne 0 ]]; then
        completions=("${must_have_one_noun[@]}")
    fi
    if [[ ${#must_have_one_flag[@]} -ne 0 ]]; then
        completions+=("${must_have_one_flag[@]}")
    fi
    COMPREPLY=( $(compgen -W "${completions[*]}" -- "$cur") )

    if [[ ${#COMPREPLY[@]} -eq 0 && ${#noun_aliases[@]} -gt 0 && ${#must_have_one_noun[@]} -ne 0 ]]; then
        COMPREPLY=( $(compgen -W "${noun_aliases[*]}" -- "$cur") )
    fi

    if [[ ${#COMPREPLY[@]} -eq 0 ]]; then
        declare -F __custom_func >/dev/null && __custom_func
    fi

    __ltrim_colon_completions "$cur"
}

# The arguments should be in the form "ext1|ext2|extn"
__handle_filename_extension_flag()
{
    local ext="$1"
    _filedir "@(${ext})"
}

__handle_subdirs_in_dir_flag()
{
    local dir="$1"
    pushd "${dir}" >/dev/null 2>&1 && _filedir -d && popd >/dev/null 2>&1
}

__handle_flag()
{
    __debug "${FUNCNAME[0]}: c is $c words[c] is ${words[c]}"

    # if a command required a flag, and we found it, unset must_have_one_flag()
    local flagname=${words[c]}
    local flagvalue
    # if the word contained an =
    if [[ ${words[c]} == *"="* ]]; then
        flagvalue=${flagname#*=} # take in as flagvalue after the =
        flagname=${flagname%%=*} # strip everything after the =
        flagname="${flagname}=" # but put the = back
    fi
    __debug "${FUNCNAME[0]}: looking for ${flagname}"
    if __contains_word "${flagname}" "${must_have_one_flag[@]}"; then
        must_have_one_flag=()
    fi

    # if you set a flag which only applies to this command, don't show subcommands
    if __contains_word "${flagname}" "${local_nonpersistent_flags[@]}"; then
      commands=()
    fi

    # keep flag value with flagname as flaghash
    if [ -n "${flagvalue}" ] ; then
        flaghash[${flagname}]=${flagvalue}
    elif [ -n "${words[ $((c+1)) ]}" ] ; then
        flaghash[${flagname}]=${words[ $((c+1)) ]}
    else
        flaghash[${flagname}]="true" # pad "true" for bool flag
    fi

    # skip the argument to a two word flag
    if __contains_word "${words[c]}" "${two_word_flags[@]}"; then
        c=$((c+1))
        # if we are looking for a flags value, don't show commands
        if [[ $c -eq $cword ]]; then
            commands=()
        fi
    fi

    c=$((c+1))

}

__handle_noun()
{
    __debug "${FUNCNAME[0]}: c is $c words[c] is ${words[c]}"

    if __contains_word "${words[c]}" "${must_have_one_noun[@]}"; then
        must_have_one_noun=()
    elif __contains_word "${words[c]}" "${noun_aliases[@]}"; then
        must_have_one_noun=()
    fi

    nouns+=("${words[c]}")
    c=$((c+1))
}

__handle_command()
{
    __debug "${FUNCNAME[0]}: c is $c words[c] is ${words[c]}"

    local next_command
    if [[ -n ${last_command} ]]; then
        next_command="_${last_command}_${words[c]//:/__}"
    else
        if [[ $c -eq 0 ]]; then
            next_command="_$(basename "${words[c]//:/__}")"
        else
            next_command="_${words[c]//:/__}"
        fi
    fi
    c=$((c+1))
    __debug "${FUNCNAME[0]}: looking for ${next_command}"
    declare -F $next_command >/dev/null && $next_command
}

__handle_word()
{
    if [[ $c -ge $cword ]]; then
        __handle_reply
        return
    fi
    __debug "${FUNCNAME[0]}: c is $c words[c] is ${words[c]}"
    if [[ "${words[c]}" == -* ]]; then
        __handle_flag
    elif __contains_word "${words[c]}" "${commands[@]}"; then
        __handle_command
    elif [[ $c -eq 0 ]] && __contains_word "$(basename "${words[c]}")" "${commands[@]}"; then
        __handle_command
    else
        __handle_noun
    fi
    __handle_word
}

_s2i_build()
{
    last_command="s2i_build"
    commands=()

    flags=()
    two_word_flags=()
    local_nonpersistent_flags=()
    flags_with_completion=()
    flags_completion=()

    flags+=("--allowed-uids=")
    two_word_flags+=("-u")
    local_nonpersistent_flags+=("--allowed-uids=")
    flags+=("--application-name=")
    two_word_flags+=("-n")
    local_nonpersistent_flags+=("--application-name=")
    flags+=("--assemble-user=")
    local_nonpersistent_flags+=("--assemble-user=")
    flags+=("--callback-url=")
    local_nonpersistent_flags+=("--callback-url=")
    flags+=("--cap-drop=")
    local_nonpersistent_flags+=("--cap-drop=")
    flags+=("--context-dir=")
    local_nonpersistent_flags+=("--context-dir=")
    flags+=("--copy")
    flags+=("-c")
    local_nonpersistent_flags+=("--copy")
    flags+=("--description=")
    local_nonpersistent_flags+=("--description=")
    flags+=("--destination=")
    two_word_flags+=("-d")
    local_nonpersistent_flags+=("--destination=")
    flags+=("--dockercfg-path=")
    local_nonpersistent_flags+=("--dockercfg-path=")
    flags+=("--env=")
    two_word_flags+=("-e")
    local_nonpersistent_flags+=("--env=")
    flags+=("--environment-file=")
    two_word_flags+=("-E")
    local_nonpersistent_flags+=("--environment-file=")
    flags+=("--exclude=")
    local_nonpersistent_flags+=("--exclude=")
    flags+=("--ignore-submodules")
    local_nonpersistent_flags+=("--ignore-submodules")
    flags+=("--incremental")
    local_nonpersistent_flags+=("--incremental")
    flags+=("--incremental-pull-policy=")
    local_nonpersistent_flags+=("--incremental-pull-policy=")
    flags+=("--inject=")
    two_word_flags+=("-i")
    local_nonpersistent_flags+=("--inject=")
    flags+=("--location=")
    two_word_flags+=("-l")
    local_nonpersistent_flags+=("--location=")
    flags+=("--pull-policy=")
    two_word_flags+=("-p")
    local_nonpersistent_flags+=("--pull-policy=")
    flags+=("--quiet")
    flags+=("-q")
    local_nonpersistent_flags+=("--quiet")
    flags+=("--ref=")
    two_word_flags+=("-r")
    local_nonpersistent_flags+=("--ref=")
    flags+=("--rm")
    local_nonpersistent_flags+=("--rm")
    flags+=("--run")
    local_nonpersistent_flags+=("--run")
    flags+=("--runtime-artifact=")
    two_word_flags+=("-a")
    local_nonpersistent_flags+=("--runtime-artifact=")
    flags+=("--runtime-image=")
    local_nonpersistent_flags+=("--runtime-image=")
    flags+=("--runtime-pull-policy=")
    local_nonpersistent_flags+=("--runtime-pull-policy=")
    flags+=("--save-temp-dir")
    local_nonpersistent_flags+=("--save-temp-dir")
    flags+=("--scripts=")
    local_nonpersistent_flags+=("--scripts=")
    flags+=("--scripts-url=")
    two_word_flags+=("-s")
    local_nonpersistent_flags+=("--scripts-url=")
    flags+=("--use-config")
    local_nonpersistent_flags+=("--use-config")
    flags+=("--volume=")
    two_word_flags+=("-v")
    local_nonpersistent_flags+=("--volume=")
    flags+=("--ca=")
    flags+=("--cert=")
    flags+=("--key=")
    flags+=("--loglevel=")
    flags+=("--tls")
    flags+=("--tlsverify")
    flags+=("--url=")
    two_word_flags+=("-U")

    must_have_one_flag=()
    must_have_one_noun=()
    noun_aliases=()
}

_s2i_completion()
{
    last_command="s2i_completion"
    commands=()

    flags=()
    two_word_flags=()
    local_nonpersistent_flags=()
    flags_with_completion=()
    flags_completion=()

    flags+=("--ca=")
    flags+=("--cert=")
    flags+=("--key=")
    flags+=("--loglevel=")
    flags+=("--tls")
    flags+=("--tlsverify")
    flags+=("--url=")
    two_word_flags+=("-U")

    must_have_one_flag=()
    must_have_one_noun=()
    must_have_one_noun+=("bash")
    must_have_one_noun+=("zsh")
    noun_aliases=()
}

_s2i_create()
{
    last_command="s2i_create"
    commands=()

    flags=()
    two_word_flags=()
    local_nonpersistent_flags=()
    flags_with_completion=()
    flags_completion=()

    flags+=("--ca=")
    flags+=("--cert=")
    flags+=("--key=")
    flags+=("--loglevel=")
    flags+=("--tls")
    flags+=("--tlsverify")
    flags+=("--url=")
    two_word_flags+=("-U")

    must_have_one_flag=()
    must_have_one_noun=()
    noun_aliases=()
}

_s2i_rebuild()
{
    last_command="s2i_rebuild"
    commands=()

    flags=()
    two_word_flags=()
    local_nonpersistent_flags=()
    flags_with_completion=()
    flags_completion=()

    flags+=("--callback-url=")
    local_nonpersistent_flags+=("--callback-url=")
    flags+=("--destination=")
    two_word_flags+=("-d")
    local_nonpersistent_flags+=("--destination=")
    flags+=("--dockercfg-path=")
    local_nonpersistent_flags+=("--dockercfg-path=")
    flags+=("--incremental")
    local_nonpersistent_flags+=("--incremental")
    flags+=("--incremental-pull-policy=")
    local_nonpersistent_flags+=("--incremental-pull-policy=")
    flags+=("--pull-policy=")
    two_word_flags+=("-p")
    local_nonpersistent_flags+=("--pull-policy=")
    flags+=("--quiet")
    flags+=("-q")
    local_nonpersistent_flags+=("--quiet")
    flags+=("--rm")
    local_nonpersistent_flags+=("--rm")
    flags+=("--runtime-pull-policy=")
    local_nonpersistent_flags+=("--runtime-pull-policy=")
    flags+=("--save-temp-dir")
    local_nonpersistent_flags+=("--save-temp-dir")
    flags+=("--ca=")
    flags+=("--cert=")
    flags+=("--key=")
    flags+=("--loglevel=")
    flags+=("--tls")
    flags+=("--tlsverify")
    flags+=("--url=")
    two_word_flags+=("-U")

    must_have_one_flag=()
    must_have_one_noun=()
    noun_aliases=()
}

_s2i_usage()
{
    last_command="s2i_usage"
    commands=()

    flags=()
    two_word_flags=()
    local_nonpersistent_flags=()
    flags_with_completion=()
    flags_completion=()

    flags+=("--callback-url=")
    local_nonpersistent_flags+=("--callback-url=")
    flags+=("--destination=")
    two_word_flags+=("-d")
    local_nonpersistent_flags+=("--destination=")
    flags+=("--dockercfg-path=")
    local_nonpersistent_flags+=("--dockercfg-path=")
    flags+=("--incremental")
    local_nonpersistent_flags+=("--incremental")
    flags+=("--incremental-pull-policy=")
    local_nonpersistent_flags+=("--incremental-pull-policy=")
    flags+=("--location=")
    two_word_flags+=("-l")
    local_nonpersistent_flags+=("--location=")
    flags+=("--pull-policy=")
    two_word_flags+=("-p")
    local_nonpersistent_flags+=("--pull-policy=")
    flags+=("--quiet")
    flags+=("-q")
    local_nonpersistent_flags+=("--quiet")
    flags+=("--rm")
    local_nonpersistent_flags+=("--rm")
    flags+=("--runtime-pull-policy=")
    local_nonpersistent_flags+=("--runtime-pull-policy=")
    flags+=("--save-temp-dir")
    local_nonpersistent_flags+=("--save-temp-dir")
    flags+=("--ca=")
    flags+=("--cert=")
    flags+=("--key=")
    flags+=("--loglevel=")
    flags+=("--tls")
    flags+=("--tlsverify")
    flags+=("--url=")
    two_word_flags+=("-U")

    must_have_one_flag=()
    must_have_one_noun=()
    noun_aliases=()
}

_s2i_version()
{
    last_command="s2i_version"
    commands=()

    flags=()
    two_word_flags=()
    local_nonpersistent_flags=()
    flags_with_completion=()
    flags_completion=()

    flags+=("--ca=")
    flags+=("--cert=")
    flags+=("--key=")
    flags+=("--loglevel=")
    flags+=("--tls")
    flags+=("--tlsverify")
    flags+=("--url=")
    two_word_flags+=("-U")

    must_have_one_flag=()
    must_have_one_noun=()
    noun_aliases=()
}

_s2i()
{
    last_command="s2i"
    commands=()
    commands+=("build")
    commands+=("completion")
    commands+=("create")
    commands+=("rebuild")
    commands+=("usage")
    commands+=("version")

    flags=()
    two_word_flags=()
    local_nonpersistent_flags=()
    flags_with_completion=()
    flags_completion=()

    flags+=("--ca=")
    flags+=("--cert=")
    flags+=("--key=")
    flags+=("--loglevel=")
    flags+=("--tls")
    flags+=("--tlsverify")
    flags+=("--url=")
    two_word_flags+=("-U")

    must_have_one_flag=()
    must_have_one_noun=()
    noun_aliases=()
}

__start_s2i()
{
    local cur prev words cword
    declare -A flaghash 2>/dev/null || :
    if declare -F _init_completion >/dev/null 2>&1; then
        _init_completion -s || return
    else
        __my_init_completion -n "=" || return
    fi

    local c=0
    local flags=()
    local two_word_flags=()
    local local_nonpersistent_flags=()
    local flags_with_completion=()
    local flags_completion=()
    local commands=("s2i")
    local must_have_one_flag=()
    local must_have_one_noun=()
    local last_command
    local nouns=()

    __handle_word
}

if [[ $(type -t compopt) = "builtin" ]]; then
    complete -o default -F __start_s2i s2i
else
    complete -o default -o nospace -F __start_s2i s2i
fi

# ex: ts=4 sw=4 et filetype=sh

BASH_COMPLETION_EOF
}

__kubectl_bash_source <(__kubectl_convert_bash_to_zsh)

source /Users/corey/.zsh/zsh-git-prompt/zshrc.sh
export GIT_PROMPT_EXECUTABLE="haskell"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

eval "$(direnv hook zsh)"
zstyle ':urlglobber' url-other-schema
. "/Users/corey/.acme.sh/acme.sh.env"
