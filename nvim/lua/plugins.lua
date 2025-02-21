return {
  -- Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- Disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            sort_by = "case_sensitive",
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },
        })
        
        vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
    end,
},
  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
      vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
    end,
  },

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
      require('lualine').setup()
    end,
  },

  -- Avante AI
{
    "yetone/avante.nvim",
    lazy = false,
    cmd = "Avante",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "MunifTanjim/nui.nvim",
	    
            lazy = false
        },
        "nvim-telescope/telescope.nvim",
        "stevearc/dressing.nvim"
    },
    config = function()
        vim.g.loaded_avante = 1  -- Ensure plugin is loaded
        require("avante").setup({
            poe = {
                api_key = vim.env.ANTHROPIC_API_KEY,
                model = "claude-3-sonnet-20240229"
            }
        })
        -- Register the command explicitly
        vim.api.nvim_create_user_command('Avante', function()
            require('avante').toggle()
        end, {})
    end,
},
}





