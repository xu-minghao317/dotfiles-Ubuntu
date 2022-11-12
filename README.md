# Dev-env Setup

[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)
[![Issues](https://img.shields.io/github/issues/xu-minghao317/dotfiles-PopOS)](https://github.com/xu-minghao317/dotfiles-PopOS/issues)

## Workflow

1. Upgrade Pop_OS.

   ```shell
   sudo apt update && sudo apt upgrade -y
   ```

2. Run `dotbot`.

   ```shell
   git clone https://github.com/xu-minghao317/dotfiles-PopOS.git ~/.dotfiles --recursive --depth=1
   cd ~/.dotfiles && ./install
   ```

3. Install [Fira Code Nerd Font](https://www.nerdfonts.com/font-downloads) for Hyper.

4. Migrate `GPG` and `SSH` keys safely.
