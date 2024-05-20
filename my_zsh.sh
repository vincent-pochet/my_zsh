autoload -Uz compinit
compinit

for config_file ($ZSH/config/*.zsh) source $config_file

for client_file ($ZSH/clients/*.zsh) source $client_file

eval "$(starship init zsh)"

if [ -f /usr/bin/fastfetch ]; then
	fastfetch
fi
