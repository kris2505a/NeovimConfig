
local map = vim.keymap.set

-- -----------------------------------------------------------
-- Fzf-Lua FUZZY FINDER
-- -----------------------------------------------------------
local fzf = require('fzf-lua')
map('n', '<leader>ff', fzf.files,{desc = "Find Files"})
map('n', '<leader>fg', fzf.live_grep, {desc = "Live Grep"})
map('n', '<leader>fs', fzf.lsp_workspace_symbols, {desc = "Find Symbol"})

-- ------------------------------------------------------------
-- Ctrl + Left / Right: word navigation
-- ------------------------------------------------------------

map("n", "<C-Left>", "b", { desc = "Previous word" })
map("n", "<C-Right>", "w", { desc = "Next word" })

map("i", "<C-Left>", "<C-o>b", { desc = "Previous word" })
map("i", "<C-Right>", "<C-o>w", { desc = "Next word" })

-- ------------------------------------------------------------
-- Ctrl + Backspace / Delete: word deletion
-- ------------------------------------------------------------

map("i", "<C-BS>", "<C-w>", { desc = "Delete previous word" })
map("i", "<C-h>", "<C-w>", { desc = "Delete previous word" })
map("i", "<C-Delete>", "<C-o>dw", { desc = "Delete next word" })

-- ------------------------------------------------------------
-- Ctrl + C / X: copy and cut
-- ------------------------------------------------------------

-- Normal mode: current line
map("n", "<C-c>", '"+yy', { desc = "Copy line" })
map("n", "<C-x>", '"+dd', { desc = "Cut line" })

-- Insert mode: current line
local function copy_line()
  vim.cmd('normal! "+yy')
end

local function cut_line()
  vim.cmd('normal! "+dd')
end

map("i", "<C-c>", copy_line, { desc = "Copy line" })
map("i", "<C-x>", cut_line, { desc = "Cut line" })

-- Visual mode: selected text
map("x", "<C-c>", '"+y', { desc = "Copy selection" })
map("x", "<C-x>", '"+d', { desc = "Cut selection" })

-- ------------------------------------------------------------
-- Ctrl + V: paste
-- ------------------------------------------------------------

map("n", "<C-v>", '"+p', { desc = "Paste" })
map("i", "<C-v>", '<C-r>+', { desc = "Paste" })
map("x", "<C-v>", '"+p', { desc = "Paste" })

-- ------------------------------------------------------------
-- Ctrl + S / Z / Y: save, undo, redo
-- ------------------------------------------------------------

map({ "n", "i", "v" }, "<C-s>", "<Cmd>write<CR>", { desc = "Save" })
map({ "n", "i", "v" }, "<C-z>", "<Cmd>undo<CR>", { desc = "Undo" })
map({ "n", "i", "v" }, "<C-y>", "<Cmd>redo<CR>", { desc = "Redo" })

-- ------------------------------------------------------------
-- Shift + Arrow: text-editor style selection
-- ------------------------------------------------------------

map("n", "<S-Left>", "v<Left>", { desc = "Select left" })
map("n", "<S-Right>", "v<Right>", { desc = "Select right" })
map("n", "<S-Up>", "v<Up>", { desc = "Select up" })
map("n", "<S-Down>", "v<Down>", { desc = "Select down" })


-- ------------------------------------------------------------
-- Neo-Tree
-- ------------------------------------------------------------
map('n', '<leader>e', '<Cmd>Neotree toggle<CR>', {
  desc = "Toggle neo-tree"
})
