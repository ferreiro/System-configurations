#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

# export DOTFILES_DIR EXTRA_DIR
# DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# EXTRA_DIR="$HOME/.extra"

# Update dotfiles itself first

# [ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master


# Make autocompletation non case sensitive
# Info: http://askubuntu.com/questions/87061/can-i-make-tab-auto-completion-case-insensitive-in-the-terminal

# Add option to ~/.inputrc to enable case-insensitive tab completion
# If ~./inputrc doesn't exist yet, first include 
# the original /etc/inputrc so we don't override it

if [ ! -a ~/.inputrc ]; then echo "\$include /etc/inputrc" > ~/.inputrc; fi
echo "set completion-ignore-case On" >> ~/.inputrc

# List all matches in case multiple possible completions are possible
set show-all-if-ambiguous on