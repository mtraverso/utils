preexec () { print -Pn "\e]0;$1\a" }
precmd () { print -Pn "\e]0;%~\a" }
