#!/bin/bash

nix-shell -p nix-info --run "nix-info -m"

echo "Setting up devenv..."
nix-env -iA cachix -f https://cachix.org/api/v1/install
cachix use devenv
nix-env -if https://github.com/cachix/devenv/tarball/v0.4

echo "Done installing deven."
devenv info
