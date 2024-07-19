# TokyoNight Night color scheme for zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# Define colors for TokyoNight Night theme
local CURSOR_FG="#c0caf5"
local DEFAULT_FG="#c0caf5"
local DEFAULT_BG="none"
local COMMENT_FG="#565f89"
local COMMAND_FG="#7aa2f7"
local COMMAND_BG="none"
local QUOTED_FG="#9ece6a"
local CONDITIONAL_FG="#e0af68"
local FUNCTION_FG="#bb9af7"
local KEYWORD_FG="#bb9af7"
local BUILTIN_FG="#f7768e"
local MATCH_FG="#e0af68"
local MATH_FG="#ff9e64"
local BRACKET_FG="#7dcfff"
local BACKGROUND="none"

ZSH_HIGHLIGHT_STYLES[default]=fg=$DEFAULT_FG,bg=$DEFAULT_BG
ZSH_HIGHLIGHT_STYLES[comment]=fg=$COMMENT_FG,bg=$DEFAULT_BG
ZSH_HIGHLIGHT_STYLES[command]=fg=$COMMAND_FG,bg=$COMMAND_BG
ZSH_HIGHLIGHT_STYLES[quoted]=fg=$QUOTED_FG,bg=$BACKGROUND
ZSH_HIGHLIGHT_STYLES[conditional]=fg=$CONDITIONAL_FG,bg=$BACKGROUND
ZSH_HIGHLIGHT_STYLES[function]=fg=$FUNCTION_FG,bg=$BACKGROUND
ZSH_HIGHLIGHT_STYLES[keyword]=fg=$KEYWORD_FG,bg=$BACKGROUND
ZSH_HIGHLIGHT_STYLES[builtin]=fg=$BUILTIN_FG,bg=$BACKGROUND
ZSH_HIGHLIGHT_STYLES[match]=fg=$MATCH_FG,bg=$BACKGROUND
ZSH_HIGHLIGHT_STYLES[math]=fg=$MATH_FG,bg=$BACKGROUND
ZSH_HIGHLIGHT_STYLES[bracket]=fg=$BRACKET_FG,bg=$BACKGROUND
ZSH_HIGHLIGHT_STYLES[cursor]=fg=$CURSOR_FG,bg=$BACKGROUND
