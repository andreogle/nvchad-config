-- n, v, i, t = mode names

local M = {}

M.custom = {
  n = {
    ["n"] = { "nzzzv", "Move cursor to centre of the screen while cycling forwards" },
    ["N"] = { "Nzzzv", "Move cursor to centre of the screen while cycling backwards" },
    ["Q"] = { "<nop>", "Do nothing with Q" },
    ["Y"] = { "Y", "Copy full line" },

    ["<leader>hs"] = { ":split<CR>", "Split buffer horizontally" },
    ["<leader>rr"] = { ":NvimTreeFindFile<CR>", "Find the current file in nvim-tree" },
    ["<leader>s"] = { ":vsplit<CR>", "Split buffer vertically" },

    ["<C-b>"] = { "i<CR><Esc>l", "Move everything after the cursor to the next line" },
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<C-x>"] = { ":nohl<CR><C-l>", "Clear search highlighting" },
  },

  v = {
    ["<"] = { "<gv", "Shift content to the left" },
    [">"] = { ">gv", "Shift content to the right" }
  },
}

return M
