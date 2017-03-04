Personal dotfiles
===================

This is a fork of thoughtbot's [original](https://github.com/thoughtbot/dotfiles.git)
because I'm picky. Constantly a work in progress.

Requirements
------------

Homebrew packages:

```
diff-so-fancy
node --without-npm
rbenv
tmux
yarn
zsh
zsh-syntax-highlighting
```

Work specific Homebrew packages:

```
imagemagick
mysql56
phantomjs
redis
```

JavaScript:

```
gulp-cli
n
webpack
webpack-dev-server
```

Set zsh as your login shell (May need to do this through Users & Groups on MacOS):

```
chsh -s $(which zsh)
```

Install
-------

1. Download Xcode and CLI utilities

1. Install Homebrew and Homebrew packages

1. Install npm

    ```
    curl -L https://www.npmjs.org/install.sh | sh
    ```

1. Setup SSH key with GitHub

    Be sure to permanently add the key in `~/.ssh/config`

1. Clone onto your laptop:

    ```
    git clone git://github.com/jchristianhall/dotfiles.git ~/dotfiles
    ```

1. Install [rcm](https://github.com/thoughtbot/rcm):

    ```
    brew tap thoughtbot/formulae
    brew install rcm
    ```

1. Install the dotfiles:

    ```
    env RCRC=$HOME/dotfiles/rcrc rcup
    ```

    You should run `rcup` after pulling a new version of the repository to symlink
    any new files in the repository.

1. Install [pure prompt](https://github.com/sindresorhus/pure#manually)

    ```
    cd pure
    git submodule init
    git submodule update
    ln -s "$HOME/dotfiles/pure/pure.zsh" "$HOME/.zsh/functions/prompt_pure_setup"
    ln -s "$HOME/dotfiles/pure/async.zsh" "$HOME/.zsh/functions/async"
    autoload -U promptinit; promptinit
    prompt pure
    ```

1. Install global yarn packages

1. Manually add tmuxinator configs from private location

Most of these steps should be automated in `setup.sh` eventually.

What's in it?
-------------

[git](http://git-scm.com/) configuration:

* Adds a `create-branch` alias to create feature branches.
* Adds a `delete-branch` alias to delete feature branches.
* Adds a `merge-branch` alias to merge feature branches into master.
* Adds an `up` alias to fetch and rebase `origin/master` into the feature
  branch. Use `git up -i` for interactive rebases.
* Adds lots of aliases for common commands.
* Makes output pretty with `diff-so-fancy`.
* Sets smart defaults for lots of things like `.gitignore`, etc.
* Add a fun gitmessage comment

[tmux](http://robots.thoughtbot.com/a-tmux-crash-course) configuration:

* Improve color resolution.
* Remove administrative debris (session name, hostname, time) in status bar.
* Set prefix to `Ctrl+j`
* Soften status bar color from harsh green to light gray.

[npm](https://www.npmjs.com) configuration:

* Remove need for using sudo by setting up npm to install to a specific global directory that doesn't need special permissions

[Ruby](https://www.ruby-lang.org/en/) configuration:

* Add trusted binstubs to the `PATH`.
* Load rbenv into the shell, adding shims onto our `PATH`.

Shell aliases and scripts:

* Adds some bash settings in case you don't wanna use zsh
* `g` with no arguments is `git status` and with arguments acts like `git`.
* `mcd` to make a directory and change into it.
* `v` for `$VISUAL`.

Todo
----
* Figure out where to store more private info for easy setup outside of this repo
* `setup.sh` to automate even more things
* Brewfile to automate brew installations
* Organize directories
* Manage atom configs in this repo

License
-------

dotfiles is copyright © 2009-2016 thoughtbot. It is free software, and may be
redistributed under the terms specified in the [`LICENSE`] file.

[`LICENSE`]: /LICENSE
