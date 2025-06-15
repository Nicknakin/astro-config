-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    'salkin-mada/openscad.nvim',
    lazy = false,
    ft = { "scad" },
    config = function() 
      require('openscad')
      vim.g.openscad_load_snippets = true
    end,
  },
  {
    'L3MON4D3/LuaSnip'
  },
  {
    'https://gitlab.com/itaranto/plantuml.nvim',
    version = '*',
    lazy = false,
    ft = { "iuml", "plantuml", "pu", "puml", "wsd" },
    config = {
      renderer = {
        type = 'image',
        options = {
          prog = 'feh -R 0.1',
          dark_mode = true,
        }
      },
      render_on_write = true,
    }
  },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
  {
    'cameron-wags/rainbow_csv.nvim',
    config = true,
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    },
    cmd = {
        'RainbowDelim',
        'RainbowDelimSimple',
        'RainbowDelimQuoted',
        'RainbowMultiDelim'
    }
  }
}
