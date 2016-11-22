Personal dotfiles
===================

This is a fork of thoughtbot's [original](https://github.com/thoughtbot/dotfiles.git)
because I'm picky. Constantly a work in progress.

Requirements
------------

General Homebrew packages:

    diff-so-fancy
    rbenv
    tmux
    zsh

Work specific Homebrew packages:

    imagemagick
    mysql56
    phantomjs
    redis

Other dependencies:

    Node and npm (from source)
    n (npm)
    yarn (npm)

Set zsh as your login shell:

    chsh -s $(which zsh)

Install
-------

Clone onto your laptop:

    git clone git://github.com/jchristianhall/dotfiles.git ~/dotfiles

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

You can safely run `rcup` multiple times to update:

    rcup

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.

What's in it?
-------------

[tmux](http://robots.thoughtbot.com/a-tmux-crash-course)
configuration:

* Improve color resolution.
* Remove administrative debris (session name, hostname, time) in status bar.
* Set prefix to `Ctrl+j`
* Soften status bar color from harsh green to light gray.

[git](http://git-scm.com/) configuration:

* Adds a `create-branch` alias to create feature branches.
* Adds a `delete-branch` alias to delete feature branches.
* Adds a `merge-branch` alias to merge feature branches into master.
* Adds an `up` alias to fetch and rebase `origin/master` into the feature
  branch. Use `git up -i` for interactive rebases.
* Adds lots of aliases for common commands.
* Makes output pretty with `diff-so-fancy`.
* Sets smart defaults for lots of things like `.gitignore`, etc.

[Ruby](https://www.ruby-lang.org/en/) configuration:

* Add trusted binstubs to the `PATH`.
* Load rbenv into the shell, adding shims onto our `PATH`.

Shell aliases and scripts:

* Adds some bash settings in case you don't wanna use zsh
* `g` with no arguments is `git status` and with arguments acts like `git`.
* `mcd` to make a directory and change into it.
* `v` for `$VISUAL`.

License
-------

dotfiles is copyright © 2009-2016 thoughtbot. It is free software, and may be
redistributed under the terms specified in the [`LICENSE`] file.

[`LICENSE`]: /LICENSE
