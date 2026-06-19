#!/usr/bin/env bash
cd

sudo nixos-rebuild switch --flake ~/Pi_montior/nix#home --impure
