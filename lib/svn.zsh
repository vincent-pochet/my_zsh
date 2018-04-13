function svn_prompt_info() {
  if [[ -n $(svn status 2> /dev/null) ]]; then
    echo "%{$fg[yellow]%}‹svn›* %{$reset_color%}"
  else
    echo ""
  fi
}
