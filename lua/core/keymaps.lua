vim.g.mapleader = " "
-- Remap save to ZW
vim.keymap.set("n", "ZW", vim.cmd.w)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>xf", "<cmd>!chmod +x %<CR>", { silent = true })

-- Window movement keymaps
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-l>", "<C-w>l")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-j>", "<C-w>j")

-- Telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set("n", "<leader>ls", builtin.live_grep, {})

-- Vim fugitive keymaps
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Nvim tree keymaps
vim.keymap.set("n", "<leader>to", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>tf", vim.cmd.NvimTreeFocus)

-- Undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- ToggleTerm
vim.keymap.set("n", "<leader>tt", "<cmd>lua _genericTermToggle()<CR>")
vim.keymap.set("n", "<leader>tg", "<cmd>lua _lazygitToggle()<CR>")
vim.keymap.set("t", "<esc>", [[<C-\><C-n>ZQ]])
vim.keymap.set('t', '<M-h>', "<Cmd>wincmd h<CR>")
vim.keymap.set('t', '<M-j>', "<Cmd>wincmd j<CR>")
vim.keymap.set('t', '<M-k>', "<Cmd>wincmd k<CR>")
vim.keymap.set('t', '<M-l>', "<Cmd>wincmd l<CR>")
