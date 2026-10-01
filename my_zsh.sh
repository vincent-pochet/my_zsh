# zsh-autocomplete runs compinit itself and must load before any compdef call.
if [ -r /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]; then
	source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
else
	autoload -Uz compinit
	compinit
fi

for config_file ($ZSH/config/*.zsh) source $config_file

for client_file ($ZSH/clients/*.zsh) source $client_file

eval "$(starship init zsh)"

if [ -f /usr/bin/fastfetch ]; then

	# Check if the terminal is running inside VS Code
	if [ "$VS_CODE_INTEGRATED" != "true" ] && [ "$ZED_TERM" != "true" ]
	then
		fastfetch
	fi
fi

eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"

# Must stay last: it only wraps zle widgets defined before it is sourced.
if [ -r /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
