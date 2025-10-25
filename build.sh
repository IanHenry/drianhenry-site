#!/bin/bash
# Exit on error
set -e

# Download and install Quarto CLI
curl -LO https://github.com/quarto-dev/quarto-cli/releases/latest/download/quarto-linux-amd64.deb
sudo dpkg -i quarto-linux-amd64.deb

# Build the folder specified by the environment variable SITE_FOLDER
quarto render "$SITE_FOLDER"

