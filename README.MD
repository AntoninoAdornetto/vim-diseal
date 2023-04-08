# Vim Diseal

## Prerequisites

- Neovim 0.9 or higher

## Installation

1. Clone this repository into your Neovim configuration directory (usually `~/.config/nvim`):

```sh
git clone https://github.com/AntoninoAdornetto/vim-diseal.git ~/.config/nvim
```

To use this configuration, you'll need to have Neovim installed on your system. You can clone this repository and copy the files to your `~/.config/nvim` directory. Alternatively, you can use a plugin manager like [vim-plug](https://github.com/junegunn/vim-plug) or [packer.nvim](https://github.com/wbthomason/packer.nvim) to manage your plugins and configuration files.

## Features

This configuration includes plugins for:

- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for fuzzy finding and browsing files
- [Rose-Pine/neovim](https://github.com/rose-pine/neovim) for a beautiful, minimalistic color scheme
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for better syntax highlighting and code analysis
- [Harpoon](https://github.com/ThePrimeagen/harpoon) for easy navigation between files
- [Undotree](https://github.com/mbbill/undotree) for visualizing and navigating undo history
- [vim-fugitive](https://github.com/tpope/vim-fugitive) for Git integration
- [vim-commentary](https://github.com/tpope/vim-commentary) for commenting out code quickly
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) for automatic bracket and quote closing
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) for quickly opening and closing a terminal window
- [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim) for a lightweight language server protocol client with autocompletion

## Key Bindings

This configuration includes the following custom key bindings:

| Mode   | Key Binding      | Functionality                                           |
| ------ | ---------------  | ------------------------------------------------------- |
| Normal | `<space>pv`			| Launches the Vim Ex mode                                |
| Visual | `J`              | Moves the current line and the line below it down       |
| Visual | `K`              | Moves the current line and the line above it up         |
| Normal | `n`              | Centers the current line on the screen                  |
| Normal | `N`              | Centers the current line on the screen and selects it   |
| Visual | `<space>p`       | Paste over visually selected text                       |
| Normal | `<space>y`       | Yank text to the system clipboard                       |
| Normal | `<space>Y`       | Yank until the end of the line to the system clipboard  |

