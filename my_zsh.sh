autoload -Uz compinit
compinit

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
