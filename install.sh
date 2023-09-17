#!/bin/bash

# I use Kitty, and this does away with some annoying errors I keep getting
# due to xterm-kitty terminfo missing by default.
sudo apt-get install kitty-terminfo

# Where are we?
dotfs=$(cd "$(dirname $0)" && pwd)

# Append is safer than override in case Thors start using .bashrc for its own setup logic
cat <<EOL >> ~/.bashrc
# Amr's custom stuff from here on, added by amr/dotfiles/install.sh

alias k=kubectl
# no na no
export EDITOR=vim

# Add our bin directory to PATH
export PATH="\$PATH:$dotfs/bin"
EOL