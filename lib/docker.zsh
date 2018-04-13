alias dcr-clean="docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")"
alias dkc="docker-compose"
