ARCH=$(uname -m)

# homebrew
if [[ $ARCH == "arm64" ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
    export PATH="/opt/homebrew/bin:$PATH"
else
    eval $(/usr/local/bin/brew shellenv)
    export PATH="/usr/local/bin:$PATH"
fi

export HOMEBREW_BREWFILE_ON_REQUEST=1
if [ -f $(brew --prefix)/etc/brew-wrap ]; then
    source $(brew --prefix)/etc/brew-wrap
fi

# starship
eval "$(starship init zsh)"

# gi
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@; }

# peco
function peco-history-selection() {
    BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER" | sed 's/\\n/\n/')
    CURSOR=${#BUFFER}
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

# zplug
if [[ $ARCH == "arm64" ]]; then
    export ZPLUG_HOME=/opt/homebrew/opt/zplug
else
    export ZPLUG_HOME=/usr/local/opt/zplug
fi
source $ZPLUG_HOME/init.zsh

zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-syntax-highlighting", defer:2

## インストールする
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo
        zplug install
    fi
fi
zplug load

# nvm
export NVM_DIR="$HOME/.nvm"

if [[ $ARCH == "arm64" ]]; then
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"                                       # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
else
    [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"                                       # This loads nvm
    [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
fi

# Java
JAVA_HOME=$(/usr/libexec/java_home -v "1.8")
export PATH=${JAVA_HOME}/bin:${PATH}

# Flutter
export ENABLE_FLUTTER_DESKTOP=true
export PATH="$PATH:$HOME/fvm/default/bin"
export PATH="$PATH:$HOME/fvm/default/bin/cache/dart-sdk/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

# Android
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# node
export PATH=$PATH:./node_modules/.bin

# alias
alias ls='exa'
alias cat='bat'
alias ll='ls -lah'
alias f='open .'
alias x86='arch -x86_64 zsh'

# [Finderで開いてるディレクトリへcdするコマンド \- Qiita](https://qiita.com/ucan-lab/items/c4b3466f53eac6f1a8b7)
cdf() {
    target=$(osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)')
    if [ "$target" != "" ]; then
        cd "$target"
        pwd
    else
        echo 'No Finder window found' >&2
    fi
}

# zsh
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# gcloud
if [[ $ARCH == "arm64" ]]; then
else
    source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
    source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
fi
