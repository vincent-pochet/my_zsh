if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{${bg[cyan]}%}$FG[232]%3~%{$reset_color%}$(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}%{${reset_color}%} '

RPS1="${return_code}"
