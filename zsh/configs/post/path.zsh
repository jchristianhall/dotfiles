# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

PATH=/usr/local/bin:$PATH
PATH=/usr/local/opt/ruby/bin:$PATH

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# NPM
export PREFIX=$HOME/.npm-packages

NPM_PACKAGES="$HOME/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
PATH="$HOME/Projects/dotcom/node_modules/.bin:$PATH" # TN dotcom for eslint

# Ruby Gems
GEM_HOME="$HOME/.gem"
PATH="$GEM_HOME/bin:$PATH"
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/ # mysql2 missing library fix

# pg gem fix
export LDFLAGS="-L/usr/local/opt/libpq/lib"
export CPPFLAGS="-I/usr/local/opt/libpq/include"

export -U PATH
