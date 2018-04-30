export PATH="$PATH:$HOME/.Recursos"
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

eval $(/usr/bin/keychain --eval --agents ssh id_rsa)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/ralphkuehnert/.oh-my-zsh

#export TERM="xterm-256color"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="the-truth-about-cats-and-dogs-is-that-they-die/the-truth-about-cats-and-dogs-is-that-they-die"

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
plugins=(git rust rbenv vagrant)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

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
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"


### RALPH'S STUFF

# source my tokens file
[[ -f ~/.ralph_tokens ]] && . ~/.ralph_tokens
alias ll='ls -altr'
alias ls='ls --color=auto'
alias l='ls'
alias movedisplaytohdmi='sh ~/.my_scripts/display_on_external_monitor.sh'
alias kubetoken='sh ~/.my_scripts/get_kube_token.sh'
alias helmi='helm install'
alias codiff='code --diff'
alias dockerclean='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'
alias gusch='git push origin $(git rev-parse --abbrev-ref HEAD)'

# NANO in nowrap mode
alias nano='nano -w'

## ADD TEMPAPPS
export PATH="/home/ralphkuehnert/tempapps:$PATH"

export VISUAL=nano
export EDITOR=nano


# GO CONFIG
export GOPATH=$HOME/Development/go
export PATH="$PATH:$GOPATH/bin"

zstyle ':completion:*' special-dirs true

source <(kubectl completion zsh)
source <(helm completion zsh)
source <(tfcloud completion zsh)

# hub alias for git
eval "$(hub alias -s)"

autoload -U compinit && compinit

