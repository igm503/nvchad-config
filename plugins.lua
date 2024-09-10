local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      return require "custom.configs.mason"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require "custom.configs.mason-lspconfig"
    end,
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return require "custom.configs.nvim-treesitter"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "custom.configs.nvim-tree"
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
    config = function()
      require "custom.configs.rainbow-delimiters"
    end,
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "folke/zen-mode.nvim",
    lazy = false,
  },
  {
    "folke/trouble.nvim",
    branch = "dev",
    keys = function()
      return require "custom.configs.trouble"
    end,
    opts = {},
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require "custom.configs.noice"
    end,
  },
  {
    "yamatsum/nvim-cursorline",
    lazy = false,
    config = function()
      require "custom.configs.nvim-cursorline"
    end,
  },
  {
    'jinh0/eyeliner.nvim',
    lazy = false,
    config = function()
      require "custom.configs.eyeliner"
    end,
  },
  {
    'Exafunction/codeium.vim',
    lazy = false,
    config = function()
      vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end,
    event = 'BufEnter'
  },
}
return plugins
