local plugins = {
  {
    "nvimtools/none-ls.nvim",
    ft = { "python" },
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "mason-org/mason.nvim",
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require "configs.mason-lspconfig"
    end,
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "nvchad.configs.lspconfig"
      vim.filetype.add {
        extension = {
          metal = "cpp",
        },
      }
    end,
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return require "configs.nvim-treesitter"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "configs.nvim-tree"
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
    config = function()
      require "configs.rainbow-delimiters"
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
    keys = function()
      return require "configs.trouble"
    end,
    opts = {},
    lazy = false,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    enabled = not (os.getenv "SSH_CONNECTION" or os.getenv "SSH_TTY"),
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require "configs.noice"
    end,
  },
  {
    "yamatsum/nvim-cursorline",
    lazy = false,
    config = function()
      require "configs.nvim-cursorline"
    end,
  },
  {
    "jinh0/eyeliner.nvim",
    lazy = false,
    config = function()
      require "configs.eyeliner"
    end,
  },
  {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    config = function()
      require "configs.supermaven"
    end,
  },
  -- {
  --   "Exafunction/codeium.vim",
  --   lazy = false,
  --   config = function()
  --     vim.keymap.set("i", "<C-;>", function()
  --       return vim.fn["codeium#Accept"]()
  --     end, { expr = true, silent = true })
  --     vim.keymap.set("i", "<C-x>", function()
  --       return vim.fn["codeium#Clear"]()
  --     end, { expr = true, silent = true })
  --   end,
  --   event = "BufEnter",
  -- },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    opts = require "configs.conform",
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
  -- jupytext.nvim - converts .ipynb to editable format
  {
    "GCBallesteros/jupytext.nvim",
    lazy = false, -- must not be lazy loaded
    opts = {
      custom_language_formatting = {
        python = {
          extension = "qmd",
          style = "quarto",
          force_ft = "quarto",
        },
      },
    },
  },

  -- quarto-nvim - cell navigation and running
  {
    "quarto-dev/quarto-nvim",
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      lspFeatures = {
        enabled = true,
        languages = { "python" },
        diagnostics = {
          enabled = true,
          triggers = { "BufWritePost" },
        },
        completion = { enabled = true },
      },
      codeRunner = {
        enabled = true,
        default_method = "molten",
      },
    },
  },

  -- molten-nvim - the actual code runner
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    lazy = false,
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_image_provider = "image.nvim"

      -- Use floating window, not virtual lines
      vim.g.molten_output_virt_lines = false
      vim.g.molten_virt_text_output = false

      -- Auto-open float when entering cell
      vim.g.molten_auto_open_output = true

      -- Make float scrollable and larger
      vim.g.molten_output_win_max_height = 100

      -- Images in float only
      vim.g.molten_image_location = "float"
      vim.g.molten_auto_image_popup = false

      -- Show cell boundaries
      vim.g.molten_use_border_highlights = true

      -- Enter output window to scroll it
      vim.g.molten_enter_output_behavior = "open_and_enter"
    end,
  },

  -- image.nvim - inline image rendering
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",
      processor = "magick_cli",
      integrations = {}, -- disable integrations, let molten handle it
      max_width = 400,
      max_height = 100,
      max_height_window_percentage = math.huge, -- prevents percentage-based resizing issues
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
}
return plugins
