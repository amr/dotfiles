#!/bin/bash

# kitty-terminfo: installs xterm-kitty terminfo, better support for Kitty terminal 
# kubetail: convenient tool to view k8s logs
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y \
  kitty-terminfo \
  kubetail

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