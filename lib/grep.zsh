#
# Color grep results
# Examples: http://rubyurl.com/ZXv
#
GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

alias grep="/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS
