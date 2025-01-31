local function createNoteWithDefaultTemplate()
  local TEMPLATE_FILENAME = 'tmpl_basic'
  local obsidian = require('obsidian').get_client()
  local utils = require 'obsidian.util'

  -- prompt for note title
  -- @see: borrowed from obsidian.command.new
  local note
  local title = utils.input 'Enter title or path (optional): '
  if not title then
    return
  elseif title == '' then
    title = nil
  end

  note = obsidian:create_note { title = title, no_write = true }

  if not note then
    return
  end
  obsidian:open_note(note, { sync = true })
  -- NOTE: make sure the template folder is configured in Obsidian.nvim opts
  obsidian:write_note_to_buffer(note, { template = TEMPLATE_FILENAME })
end

return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-treesitter/nvim-treesitter',
  },
  vim.keymap.set('n', '<leader>on', createNoteWithDefaultTemplate, { desc = '[N]ew Obsidian [N]ote' }),
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/Vault',
      },
    },
    -- Optional, for templates (see below).
    log_level = vim.log.levels.WARN,
    new_notes_location = 'notes_subdir',
    preferred_link_style = 'wiki',
    disable_frontmatter = false,

    notes_subdir = '00-Inbox',
    templates = {
      folder = 'Templates/obsidian-nvim',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
      substitutions = {
        week_note = function()
          return os.date '%Y-W%V'
        end,
      },
    },

    -- Customize how note IDs are generated given an optional title.
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      local prefix = ''
      if title ~= nil then
        prefix = title
          :gsub('(%l)(%w*)', function(a, b)
            return string.upper(a) .. b
          end)
          :gsub(' ', '_')
      else
        error('Enter a Title', vim.log.levels.ERROR)
      end
      return prefix .. '-' .. tostring(os.date '%Y%m%d%H%M')
    end,
  },

  follow_url_func = function(url)
    --vim.fn.jobstart { 'xdg-open', url } -- linux
    vim.ui.open(url) -- need Neovim 0.10.0+
  end,

  ---@param img string
  follow_img_func = function(img)
    vim.fn.jobstart { 'xdg-open', img } -- linux
  end,
}
