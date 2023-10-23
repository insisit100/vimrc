-- plugin manager
local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  if vim.g.plugins_ready then
    return
  end

  -- You can 'comment out' the line below after lazy.nvim is installed
lazy.install(lazy.path)
vim.opt.rtp:prepend(lazy.path)

require('lazy').setup(plugins, lazy.opts)
  vim.g.plugins_ready = true
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
    'sainnhe/everforest',
    {
        'folke/tokyonight.nvim',
        config = function()
            vim.opt.termguicolors = true,
            vim.cmd("colorscheme tokyonight")
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },

    -- neovim lsp configuration
    'neovim/nvim-lspconfig',

    -- nvim-cmp
    'hrsh7th/cmp-nvim-lsp', -- { name = nvim_lsp }
    'hrsh7th/cmp-buffer',   -- { name = 'buffer' },
    'hrsh7th/cmp-path',     -- { name = 'path' }
    'hrsh7th/cmp-cmdline',  -- { name = 'cmdline' }
    'hrsh7th/nvim-cmp',
    -- vsnip
    'hrsh7th/cmp-vsnip',    -- { name = 'vsnip' }
    'hrsh7th/vim-vsnip',
    'rafamadriz/friendly-snippets',
    -- lspkind
    'onsails/lspkind-nvim',

    -- treesitter
    'nvim-treesitter/nvim-treesitter',
})

