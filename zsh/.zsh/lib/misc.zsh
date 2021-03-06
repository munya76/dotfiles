## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## jobs
setopt long_list_jobs

# ls colors
autoload -U colors && colors

# Enable ls colors
alias ls='ls --color=tty --group-directories-first'

setopt no_beep
setopt auto_cd
setopt multios
setopt cdablevars

# Setup the prompt with pretty colors
setopt prompt_subst
