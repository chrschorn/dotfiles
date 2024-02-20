#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo 'Linux detected'
  if [ -f /.dockerenv ]; then
      dpkg_cfg="/etc/dpkg/dpkg.cfg.d/docker"
      sudo sed -i 's/^path-exclude/#path-exclude/' "$dpkg_cfg" || true
      sudo apt-get update
  fi

  # Install zsh
  sudo apt-get install -y zsh fzf thefuck

elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo 'Mac detected'
  # Install zsh
  brew install zsh fzf thefuck
else
  echo 'OS not supported'
  exit 1
fi

# Check if oh-my-zsh is installed
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo 'Installing oh-my-zsh'
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo 'Updating oh-my-zsh'
  upgrade_oh_my_zsh
fi

# Change default shell
if [ ! $0 = "-zsh" ]; then
  echo 'Changing default shell to zsh'
  sudo chsh -s /bin/zsh
else
  echo 'Already using zsh'
fi