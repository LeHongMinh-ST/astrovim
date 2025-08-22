local keymaps = vim.keymap
local otps = { noremap = true, silent = true }

keymaps.set({ "n", "i", "x", "s" }, "<C-s>", "<cmd>w<cr><esc>", { silent = true, desc = "Save File" })

-- Delete a word
keymaps.set("n", "dw", "vb_d")

-- SelectAll
keymaps.set("n", "<C-a>", "gg<S-v>G")


-- Split window
keymaps.set("n", "ss", ":split<Return>", otps)
keymaps.set("n", "sv", ":vsplit<Return>", otps)

-- Buffer navigation
keymaps.set("n", "<S-h>", ":bprevious<CR>", opts)
keymaps.set("n", "<S-l>", ":bnext<CR>", opts)

-- Move lines up/down
keymaps.set("n", "<A-j>", ":m .+1<CR>==", opts)
keymaps.set("n", "<A-k>", ":m .-2<CR>==", opts)
keymaps.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymaps.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
keymaps.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymaps.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
