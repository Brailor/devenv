#!/bin/bash

set -e

echo "Setting up nix..."
export NIX_INSTALLER_YES=true
curl -L https://nixos.org/nix/install -o nix_installer
chmod +x nix_installer
source nix_installer --daemon
echo "Done installing nix."

