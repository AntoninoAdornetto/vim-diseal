# Vim Diseal

## Prerequisites

- Neovim 0.9 or higher
- [packer](https://github.com/wbthomason/packer.nvim) package manager

## Installation

1. Clone this repository into your Neovim configuration directory (usually `~/.config/nvim`):

```sh
git clone https://github.com/AntoninoAdornetto/vim-diseal.git ~/.config/nvim
```

To use this configuration, you'll need to have Neovim installed on your system. You can clone this repository and copy the files to your `~/.config/nvim` directory. Alternatively, you can use a plugin manager like [vim-plug](https://github.com/junegunn/vim-plug) or [packer.nvim](https://github.com/wbthomason/packer.nvim) to manage your plugins and configuration files.

# Neovim Configuration - Plugins

Here are the plugins included in the Neovim configuration:

## Package Manager

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim): Packer is a package manager for Neovim.

## Themes

- [Nightfox](https://github.com/EdenEast/nightfox.nvim) **CURRENT THEME**
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim): Gruvbox theme for Neovim.
- [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim): Nord theme for Neovim.

## Debuggers

- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap): Debug Adapter Protocol (DAP) client implementation for Neovim.
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui): UI for nvim-dap debugger.
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go): Debug adapter for Go language using nvim-dap.
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text): Virtual text for nvim-dap.

## Testing

- [vim-test/vim-test](https://github.com/vim-test/vim-test): Test runner plugin for Neovim.

## File Searching and Navigation

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): Highly extensible file-finding and fuzzy searching plugin.
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons): Icons for nvim-tree and other plugins.
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua): File explorer for Neovim.

## Code Analysis, Linting, version control

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Treesitter-powered text analysis and manipulation.
- [mbbill/undotree](https://github.com/mbbill/undotree): Undo history visualizer.
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive): Git integration for Neovim.
- [tpope/vim-commentary](https://github.com/tpope/vim-commentary): Commenting plugin for Neovim.
- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter): Git diff in the sign column.

run below command after cloning, it is required for gitgutter

```sh
nvim -u NONE -c "helptags vim-gitgutter/doc" -c q
```

## Autocompletion and Snippets

- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs): Autopairing plugin for Neovim.
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag): Automatically close and update HTML tags.
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim): Terminal plugin for Neovim.
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons): Icons for nvim-tree and other plugins.
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): Statusline plugin for Neovim.

## LSP and Autocompletion

- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim): Zero-config LSP client for Neovim.
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Configuration for built-in LSP client in Neovim.
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim): Mason integration for LSP.
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim): LSP configurations for Mason.
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp): Completion plugin for Neovim.
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): LSP source for nvim-cmp.
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip): Snippet engine for Neovim.
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim): Code actions and formatting with null-ls integration.
- [MunifTanjim/prettier.nvim](https://github.com/MunifTanjim/prettier.nvim): Prettier integration for Neovim.

Please note that the provided links will take you to the respective GitHub repositories for more information and installation instructions.
