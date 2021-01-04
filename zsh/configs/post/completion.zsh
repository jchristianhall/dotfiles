# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)

# Pure prompt
autoload -U promptinit; promptinit
zstyle :prompt:pure:prompt:success color yellow
zstyle :prompt:pure:git:dirty color red
prompt pure

# completion
autoload -Uz compinit
compinit
