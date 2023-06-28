#!/bin/bash

set -e

HOMEBREW_INSTALL_URL="https://raw.githubusercontent.com/Homebrew/install/master/install.sh"

echo "Downloading Homebrew installation script..."
curl -fsSL "$HOMEBREW_INSTALL_URL" -o "/tmp/homebrew_install.sh"

echo "Installing Homebrew..."
/bin/bash "/tmp/homebrew_install.sh"

echo "Cleaning up installation files..."
rm -f "/tmp/homebrew_install.sh"

echo "Homebrew installation complete."
