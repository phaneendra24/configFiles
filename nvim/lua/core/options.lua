local o = vim.opt

o.number = true
o.relativenumber = true

o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true

o.wrap = false

o.ignorecase = true
o.smartcase = true

o.cursorline = true

o.background = "dark"
o.signcolumn = "yes"

o.backspace = "indent,eol,start"

o.clipboard:append("unnamedplus")

o.splitright = true
o.splitbelow = true

o.iskeyword:append("-")

o.termguicolors = true
o.completeopt = "menu,menuone,noselect"
o.guicursor = ""


require("catppuccin").setup({
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
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
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
vim.cmd.colorscheme("catppuccin-mocha")

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#181825", fg = "#cdd6f4" })
