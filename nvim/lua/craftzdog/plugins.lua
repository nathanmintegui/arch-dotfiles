local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'kdheepak/lazygit.nvim'
  use 'nvim-lualine/lualine.nvim'               -- Statusline
  use 'nvim-lua/plenary.nvim'                   -- Common utilities
  use 'onsails/lspkind-nvim'                    -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'                      -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'                    -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                        -- Completion
  use 'neovim/nvim-lspconfig'                   -- LSP
  use({ 'rose-pine/neovim', as = 'rose-pine' }) -- Rose Pine Theme
  use 'olivercederborg/poimandres.nvim'         -- Poimandres Theme
  use "owickstrom/vim-colors-paramount"         -- Paramount Theme
  use 'rockerBOO/boo-colorscheme-nvim'          -- Boo Theme
  use 'fenetikm/falcon'                         -- Falton Theme
  use 'kdheepak/monochrome.nvim'                -- Monochrome Theme
  use 'Olical/conjure'                          -- Clojure
  use { 'sainnhe/gruvbox-material', config = function()
    vim.o.background = "dark"
    vim.g.gruvbox_material_background = "hard"
    vim.cmd.colorscheme 'gruvbox-material'
  end, }                                -- Gruvbox Material Theme
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'mbbill/undotree'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use {
    "jesseleite/nvim-noirbuddy",
    requires = { "tjdevries/colorbuddy.nvim", branch = "dev" }
  }
end)
