--  _ __  _                   
-- ' )  )//                   
--  /--'// . . _,  o ____  _  
-- /   </_(_/_(_)_<_/ / <_/_)_
--             /|             
--            |/              

return {
    -- Lazy.nvim
    { "folke/lazy.nvim", version = "*" },
  
    -- UI
    { "folke/noice.nvim" },
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true },
    { "declancm/cinnamon.nvim", version = "*" },
    { "nvim-lualine/lualine.nvim" },
    { "akinsho/bufferline.nvim", version = "*" },
    { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x" },
    { "lukas-reineke/indent-blankline.nvim" },
  
    -- Core functionality
    { "nvim-telescope/telescope.nvim", tag = "0.1.5" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-lua/plenary.nvim" },
  
    -- LSP
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "j-hui/fidget.nvim", tag = "legacy" },
  
    -- Autocompletion
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
  
    -- Git
    { "lewis6991/gitsigns.nvim" },
    { "tpope/vim-fugitive" },
  
    -- Utilities
    { "windwp/nvim-autopairs" },
    { "numToStr/Comment.nvim" },
    { "folke/which-key.nvim" },
    { "akinsho/toggleterm.nvim", version = "*" },
    { "mbbill/undotree" },
    { "kylechui/nvim-surround" },
    { "folke/trouble.nvim" },
  
    -- Plugin configurations
    {
      "rcarriga/nvim-notify",
      config = function()
      -- config = true
        background_color = "#202020"
      end
		},

    {
      "folke/noice.nvim",
      event = "VeryLazy",
      opts = {
        -- add any options here
      },
      dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
        }
    },

    {
        "ziontee113/icon-picker.nvim",
        config = function()
            require("icon-picker").setup({ disable_legacy_commands = true })

            local opts = { noremap = true, silent = true }

            -- vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
            -- vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
            -- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
        end
    },

    { "nvim-tree/nvim-web-devicons" },

    {
      'goolord/alpha-nvim',
      config = function ()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
          "                                    ",
          "      __     __)                    ",
          "     (, /|  /              ,        ",
          "       / | /   _  ____ _    ___     ",
          "    ) /  |/  _(/_(_) (/___(_// (_   ",
          "   (_/   `                          ",
          "                                    ",
        }

        -- Set menu
        dashboard.section.buttons.val = {
          dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
          dashboard.button( "f", "  > Find file", ":cd $HOME | Telescope find_files<CR>"),
          dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
          dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | wincmd k | pwd<CR>"),
          dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
        }
  
        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[
          autocmd FileType alpha setlocal nofoldenable
        ]])
      end
    },

    { "lualine.nvim", config = true },

    {
      "romgrk/barbar.nvim",
      dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons', 
      },
      init = function() vim.g.barbar_auto_setup = false end,
      opts = {
        animation = true,
      },
    },
    
    -- {
    --   "bufferline.nvim",
    --   config = function()
    --     require("bufferline").setup({
    --       options = { offsets = { { filetype = "neo-tree" } } }
    --     })
    --   end
    -- },
  
    {
      "neo-tree.nvim",
      dependencies = "MunifTanjim/nui.nvim",
      config = function()
        require("neo-tree").setup()
      end
    },

    {
      "preservim/nerdtree",
      dependencies = "nvim-tree/nvim-web-devicons"
    },
  
    {
      "nvim-treesitter",
      config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = { "lua", "vim", "python", "javascript", "typescript" },
          -- ensure_installed = { "lua_ls", "pyright" },
          highlight = { enable = true },
          auto_install = true
        })
      end
    },
  
    {
      "mason.nvim",
      config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls", "pyright", "ast_grep", "vimls" }
        })
      end
    },
  
    {
      "nvim-cmp",
      config = function()
        local cmp = require("cmp")
        cmp.setup({
          snippet = { expand = function(args) require("luasnip").lsp_expand(args.body) end },
          mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
          }),
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "buffer" },
            { name = "path" },
          })
        })
      end
    },   
    
 
    { "telescope.nvim", 
      config = function()
        local telescope  = require("telescope")
        telescope.setup({
          pickers = {
		        find_files = {
			        hidden = true
		        },
		        colorscheme = {
			        enable_preview = true
		        }
	        }
        })
      end
    },
    { "gitsigns.nvim", config = true },
    { "nvim-autopairs", config = true },
    { "Comment.nvim", config = true },
    { "which-key.nvim", config = true },
    { "toggleterm.nvim", config = true },
    { "nvim-surround", config = true },
    { "trouble.nvim", config = true },
  }
