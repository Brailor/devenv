#!/bin/sh

set -e

echo "Setting up nix..."
export NIX_INSTALLER_YES=true
curl -L https://nixos.org/nix/install -o nix_installer
chmod +x nix_installer
source nix_installer --daemon

echo "Done installing nix."
nix-shell -p nix-info --run "nix-info -m"

echo "Setting up devenv..."
nix-env -iA cachix -f https://cachix.org/api/v1/install
cachix use devenv
nix-env -if https://github.com/cachix/devenv/tarball/v0.4

echo "Done installing deven."
devenv info
