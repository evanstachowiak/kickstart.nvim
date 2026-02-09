return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    'rcarriga/nvim-notify',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('noice').setup {
      cmdline = {
        enabled = true,
      },
      lsp = {
        --   -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
        signature = { opts = { size = { max_height = 15 } } },
      },
      -- you can enable a preset for easier configuration
      messages = {
        -- NOTE: If you enable messages, then the cmdline is enabled automatically.
        -- This is a current Neovim limitation.
        -- enabled = false, -- enables the Noice messages UI
        enabled = false, -- enables the Noice messages UI
        view = 'notify', -- default view for messages
        view_error = 'notify', -- view for errors
        view_warn = 'notify', -- view for warnings
        view_history = 'messages', -- view for :messages
        view_search = 'virtualtext', -- view for search count messages. Set to `false` to disable
      },
      notify = {
        enabled = false,
      },
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = {
          views = {
            cmdline_popup = {
              position = {
                row = '50%',
                col = '50%',
              },
              size = {
                min_width = 60,
                width = 'auto',
                height = 'auto',
              },
            },
            popupmenu = {
              relative = 'editor',
              position = {
                row = 23,
                col = '50%',
              },
              size = {
                width = 60,
                height = 'auto',
                max_height = 15,
              },
              border = {
                style = 'rounded',
                padding = { 0, 1 },
              },
              win_options = {
                winhighlight = { Normal = 'Normal', FloatBorder = 'NoiceCmdlinePopupBorder' },
              },
            },
          },
        },
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    }
  end,
}
