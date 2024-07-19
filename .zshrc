# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="xiong-chiamiov-plus"

# Plugins
plugins=(git zsh-syntax-highlighting)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/home/mflkee/.local/bin:$PATH"
export LUA_PATH="$HOME/.luarocks/share/lua/5.4/?.lua;$HOME/.luarocks/share/lua/5.4/?/init.lua;;"
export LUA_CPATH="$HOME/.luarocks/lib/lua/5.4/?.so;;"

# Aliases
alias ds="cd ~/study/DS"
alias vim="nvim"
alias xc="xclip -selection clipboard"
alias cat="bat"
alias l="lsd -l -a"
alias ll="lsd -l"
alias ls="lsd"
alias du="dust"
alias grep="rg"
alias man="tldr"
alias top="gtop"
alias ps="procs"
alias cd="z"
alias szsh="source ~/.zshrc"
alias sysoff="sudo shutdown now"
alias lg="lazygit"

alias cfgzsh="nvim ~/.zshrc"
alias cfg="cd ~/.config"
alias cfgnvim="cd ~/.config/nvim"

alias vd="deactivate"
alias vds="source ~/study/DS/venv_ds/bin/activate"
alias vs="source venv/bin/activate"

# Lock screen settings
export XSECURELOCK_AUTH=auth_x11
export XSECURELOCK_AUTHPROTO=authproto_pam
export XSECURELOCK_AUTH_BACKGROUND_COLOR=#000000
export XSECURELOCK_AUTH_FOREGROUND_COLOR=#FFFFFF
export XSECURELOCK_BACKGROUND_COLOR=#000000
export XSECURELOCK_SHOW_DATETIME=1
export XSECURELOCK_PASSWORD_PROMPT=emoji
export XSECURELOCK_DIM_COLOR=#000000
export XSECURELOCK_DIM_ALPHA=0.5
export XSECURELOCK_DIM_FPS=60

eval "$(zoxide init zsh)"

source ~/.zsh_tokyonight_dark.zsh
