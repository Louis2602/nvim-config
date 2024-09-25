return {
  {
    "HoNamDuong/hybrid.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("hybrid").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          folds = false,
        },
        strikethrough = true,
        inverse = true,
        transparent = true,
        overrides = function(hl, c)
          local background = "#1C1F20"
          hl.TelescopeNormal = {
            fg = c.fg,
            bg = background,
          }
          hl.TelescopeBorder = {
            fg = c.float.border,
            bg = c.bg,
          }
          hl.TelescopeTitle = {
            fg = c.fg_hard,
            bg = c.bg,
            bold = true,
          }
        end,
      })
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      opts.transparent = true
      opts.italic_comments = false
      opts.borderless_telescope = false
      opts.terminal_colors = true
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").setup({
        bold_keywords = false,
        italic_comments = false,
        transparent = true,
        bright_border = false,
        reduced_blue = true,
        swap_backgrounds = false,
        telescope = {
          style = "classic",
        },
        leap = {
          dim_backdrop = false,
        },
        ts_context = {
          dark_background = true,
        },
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "darker",
        transparent = true,
        term_colors = true,
        ending_tildes = false,
        cmp_itemkind_reverse = false,

        toggle_style_key = nil,
        toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },

        code_style = {
          comments = "none",
          keywords = "none",
          functions = "none",
          strings = "none",
          variables = "none",
        },

        lualine = {
          transparent = true,
        },

        colors = {},
        highlights = {},

        diagnostics = {
          darker = true,
          undercurl = true,
          background = true,
        },
      })
    end,
  },
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "0"
      vim.g.sonokai_style = "maia"
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,
        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          if highlight.undercurl then
            highlight.undercurl = false
          end
          --
          -- Change palette colour
          if highlight.fg == palette.pine then
            highlight.fg = "#3e8fb0"
          end
        end,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = false,
          transparency = true,
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "auto", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
        no_italic = true, -- Force no italic
        no_bold = true, -- Force no bold
        no_underline = true, -- Force no underline
        default_integrations = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
    end,
  },
}
