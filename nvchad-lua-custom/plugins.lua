
local plugins = {
  {
    "mg979/vim-visual-multi",
    lazy = false,
  }, 
  {
    "BurntSushi/ripgrep",
    lazy= false,
  },
  {
    "sindrets/diffview.nvim",
    lazy = false
  },
  {
    "stevearc/dressing.nvim",
    lazy = false
  },
  {
    "ziontee113/icon-picker.nvim",
    lazy = false,
    config = function()
      require("icon-picker").setup({ disable_legacy_commands = true })
    end
  },
  {
    "Einenlum/yaml-revealer",
    lazy= false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      }
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  }

}
return plugins
