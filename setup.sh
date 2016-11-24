# Symlink dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup

# Set zsh as default shell
chsh -s $(which zsh)

# Pure prompt
ln -s "$HOME/dotfiles/pure/pure.zsh" "$HOME/.zsh/functions/prompt_pure_setup"
ln -s "$HOME/dotfiles/pure/async.zsh" "$HOME/.zsh/functions/async"
autoload -U promptinit; promptinit
prompt pure
