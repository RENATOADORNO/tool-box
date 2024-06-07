#!/bin/sh

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install build-essential procps curl file git cargo
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"