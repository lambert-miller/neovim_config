return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim", "nvim-lua/plenary.nvim" }, --, "~/Projects/my-neorg-module"
    -- build = ":Neorg sync-parsers",
    priority = 1000,
    lazy = false,
    -- dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {
            config = {
              create_todo_items = true,
            },
          }, -- Loads default behaviour
          ["core.concealer"] = {
            config = {
              icon_preset = "basic",
            },
          }, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                -- default = "~/notes/notes",
                notes = "~/notes/notes",
                journal = "~/notes/journal",
              },
            },
          },
          ["core.keybinds"] = {
            config = {
              -- default_keybinds = false,
              hook = function(keybinds)
                -- <C-Space> not working for some reason
                keybinds.remap_key("norg", "n", "<C-Space>", "<C-z>")
                -- keybinds.remap_event("norg", "n", "<leader>c", "core.qol.toc")
              end,
            },
          },
          ["core.summary"] = {},
          -- ["core.tempus"] = {},
          -- ["external.hello-world"] = {},
        },
      }
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,

    requires = {
      "~/Projects/my-neorg-module",
    },
  },
}
