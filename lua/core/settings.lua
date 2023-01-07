vim.opt.nu = true
vim.opt.relativenumber = true

-- Nvui Settings
if vim.g.nvui then
    vim.g.fontFamily = "Fira Code"
    vim.g.defaultFontSize = 11
    vim.g.currentFontSize = vim.g.defaultFontSize
    vim.opt.guifont = { vim.g.fontFamily, ":h" .. vim.g.defaultFontSize }
    vim.cmd([[NvuiCmdline 1]])
    vim.cmd([[NvuiCmdCenterYPos 0.5]])
    vim.cmd([[NvuiPopupMenu 1]])
    vim.cmd([[NvuiAnimationsEnabled 1]])
end

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
