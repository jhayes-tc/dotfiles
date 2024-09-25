# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zaw)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /home/jhayes/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#prompt_context() {
  # Custom (Random emoji)
#  emojis=("⚡️" "🔥" "💀" "🏈" "😎" "🐸" "🐵" "🏌️‍♂️" "⛳" "🍻" "🚀" "💡" "🎉" "🔑" "🚦" "⚛")
#  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
#  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
#}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
source <(ng completion script)
alias prtl="cd /home/jhayes/repos/tcetra/Vidapay"
alias ginnit="git init && git add . && git commit -m \"Initial Commit\""

# pnpm
export PNPM_HOME="/home/jhayes/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:/usr/share/dotnet"
export PATH="$PATH:/mnt/c/Users/jhayes/Downloads/Microsoft.WindowsTerminal"
export PATH="$PATH:/home/jhayes/.local/share/pnpm"
export NODE_PATH="/home/jhayes/.nvm/versions/node/v18.16.0/bin"

acp() {
    git add .
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        git commit -m "$1"
    else
        git commit -m update
    fi
    git push
}

jsgrep() {
    if [ "$1" != "" ]
    then
        grep -r --exclude-dir=node_modules "$1" .
    else
        echo "Enter a search query"
    fi
}

jsgrepl() {
    if [ "$1" != "" ]
    then
        grep -r --exclude-dir=node_modules "$1" . -l
    else
        echo "Enter a search query"
    fi
}

alias nodejs="node"

# bun completions
[ -s "/home/jhayes/.bun/_bun" ] && source "/home/jhayes/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

alias nv="nvim"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias ls="exa --icons"
alias dollie="cd /home/jhayes/repos/go/ollie"

source /home/jhayes/.oh-my-zsh/plugins/zaw/zaw.zsh

bindkey '^h' zaw-history
bindkey '^b' zaw-git-branches
alias latest="git tag | sort  -r"
alias tagdate='git log --tags --simplify-by-decoration --pretty="format:%ci %d"'

export PATH=~/.tmux/plugins/tpm:$PATH

# Occam tmux sessions
alias act="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Activation-App"
alias tools="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-DealerTools-App"
alias react="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-ReactComponents"
alias cms="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-CMS-App"
alias dashboard="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Dashboard-App"
alias nav="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Nav-App"
alias pay="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Payments-App"
alias root="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Root/"
alias header="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Header-App"
alias digi="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-DigitalSales-Modules"
alias utils="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Utils/"
alias styles="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Styles/"
alias orders="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-OrderConfirmation-App"
alias stacks="cd /home/jhayes/repos/tcetra/Infra/Dev-Stacks/"
alias noti="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Notifications-Prcl"
alias tailwind="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Tailwind-Base/"
alias account="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Account-Util"
alias user="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-User-Util"
alias ehandler="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-ErrorHandler-Util"
alias sanity="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Sanity"
alias snapshot="pnpm test -- -u && acp \"Fix tests\""
alias startup="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Startup-App"
alias reset="git checkout master && git fetch && git pull"
alias snaps="pnpm test -- -u && acp \"Fix tests\""
alias f="fzf"
alias fp="git fetch && git pull"
alias gateway="cd /home/jhayes/repos/tcetra/Vidapay/Vidapay-Gateway/"
alias ks="tmux kill-session"
alias a="tmux a"
alias lg='lazygit'
alias lunch='cd /home/jhayes/repos/go/lunchbot-api'
