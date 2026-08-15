-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set
local del = vim.keymap.del

-- ============================================================
-- Disable LazyVim window resizing
-- ============================================================

for _, key in ipairs({
  "<C-Up>",
  "<C-Down>",
  "<C-Left>",
  "<C-Right>",
  "<C-S-Up>",
  "<C-S-Down>",
  "<C-S-Left>",
  "<C-S-Right>",
}) do
  pcall(del, "n", key)
end

-- ============================================================
-- Snacks Explorer
-- ============================================================

map("n", "<C-e>", function()
  Snacks.explorer()
end, { desc = "Explorer" })

-- ============================================================
-- Ctrl + Left / Right: word navigation
-- ============================================================

map("n", "<C-Left>", "b", { desc = "Previous word" })
map("n", "<C-Right>", "w", { desc = "Next word" })

map("i", "<C-Left>", "<C-o>b", { desc = "Previous word" })
map("i", "<C-Right>", "<C-o>w", { desc = "Next word" })

-- ============================================================
-- Ctrl + Backspace / Delete: word deletion
-- ============================================================

map("i", "<C-BS>", "<C-w>", { desc = "Delete previous word" })
map("i", "<C-h>", "<C-w>", { desc = "Delete previous word" })
map("i", "<C-Delete>", "<C-o>dw", { desc = "Delete next word" })

-- ============================================================
-- Copy / Cut
-- ============================================================

local function copy_line()
  vim.cmd('normal! "+yy')
  vim.cmd("startinsert")
end

local function cut_line()
  vim.cmd('normal! "+dd')
  vim.cmd("startinsert")
end

-- Normal mode: whole line
map("n", "<C-c>", function()
  vim.cmd('normal! "+yy')
end, { desc = "Copy line" })

map("n", "<C-x>", function()
  vim.cmd('normal! "+dd')
end, { desc = "Cut line" })

-- Insert mode: whole current line
map("i", "<C-c>", copy_line, { desc = "Copy line" })
map("i", "<C-x>", cut_line, { desc = "Cut line" })

-- Visual mode: selection
map("v", "<C-c>", '"+y', { desc = "Copy selection" })
map("v", "<C-x>", '"+d', { desc = "Cut selection" })

-- ============================================================
-- Paste
-- ============================================================

map({ "n", "i", "v" }, "<C-v>", '"+p', { desc = "Paste" })

-- ============================================================
-- Save / Undo / Redo
-- ============================================================

map({ "n", "i", "v" }, "<C-s>", "<cmd>write<cr>", { desc = "Save" })
map({ "n", "i", "v" }, "<C-z>", "<cmd>undo<cr>", { desc = "Undo" })
map({ "n", "i", "v" }, "<C-y>", "<cmd>redo<cr>", { desc = "Redo" })

-- ============================================================
-- Shift + Arrow: text-editor style selection
-- ============================================================

map("n", "<S-Left>", "v<Left>", { desc = "Select left" })
map("n", "<S-Right>", "v<Right>", { desc = "Select right" })
map("n", "<S-Up>", "v<Up>", { desc = "Select up" })
map("n", "<S-Down>", "v<Down>", { desc = "Select down" })

-- map("n", "<C-t>", "<cmd>horizontal terminal<cr>", { desc = "Horizontal Terminal" })
--
map("n", "<C-t>", function()
  vim.cmd("15split")
  vim.cmd("terminal")
end, { desc = "Horizontal Terminal" })
