vim.g.mapleader = " "

local keymap = vim.keymap
-- <CR> means enter

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highlights

keymap.set("n", "x", '"_x') -- do not copy only delete

keymap.set("n", "<leader>+", "<C-a>") -- increment number
keymap.set("n", "<leader>-", "<C-x>") -- decrement number

-- windows spliting
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split window equal size
keymap.set("n", "<leader>sx", ":close<CR>") -- close curent split window

-- managing tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize current window -- toggle

-- nvim-tree explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- markdown preview
keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>") -- lunching a preview window in web browser

-- obsidian
keymap.set("n", "<leader>ot", ":ObsidianToday<CR>")
keymap.set("n", "<leader>oy", ":ObsidianYesterday<CR>")
keymap.set("n", "<leader>of", ":ObsidianQuickSwitch<CR>")
keymap.set("n", "<leader>ofl", ":ObsidianFollowLink<CR>")
keymap.set("n", "<leader>obl", ":ObsidianBacklinks<CR>")

-- git conflict markers
keymap.set("n", "<leader>gcl", ":GitConflictListQf<CR>") -- get list of all conflicts
keymap.set("n", "<leader>gcn", ":GitConflictNextConflict<CR>") -- go to next conflict
keymap.set("n", "<leader>gcp", ":GitConflictPreviousConflict<CR>") -- go to previous conflict
keymap.set("n", "<leader>gco", ":GitConflictChooseOurs<CR>") -- choose ours
keymap.set("n", "<leader>gct", ":GitConflictChooseTheirs<CR>") -- choose theirs
keymap.set("n", "<leader>gca", ":GitConflictChooseBoth<CR>") -- choose both
