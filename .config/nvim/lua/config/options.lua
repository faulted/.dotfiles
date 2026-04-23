vim.opt.number = true -- line number
vim.opt.cursorline = true -- highlight current line 
vim.opt.relativenumber = true -- relative line numbers
vim.opt.scrolloff = 10 -- keep 10 lines above / below cursor
vim.opt.sidescrolloff = 10 -- keep 10 lines to the left / right of cursor
vim.opt.showmatch = true -- highlight matching brackets

vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.smartindent = true -- syntax aware indentations for newline characters
vim.opt.tabstop = 4 -- number of spaces to use per tab
vim.opt.shiftwidth = 4 -- spaces per indentation level
vim.opt.softtabstop = 4 -- allow backspace to remove a tabs worth of spaces
vim.opt.autoindent = true -- copy indent from current line

vim.opt.ignorecase = true -- case insensitive search
vim.opt.smartcase = true -- case sensitive if uppercase is in search string
vim.opt.hlsearch = true -- highlight search matches
vim.opt.incsearch = true -- show matches as you type

-- Create undodir if it doesnt exist
local undodir = vim.fn.expand("~/.nvim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end

vim.opt.backup = false -- do not createe a backup file
vim.opt.writebackup = false -- do not write to a backup file
vim.opt.swapfile = false -- do not create a swapfile
vim.opt.undofile = true -- do create an undo file
vim.opt.undodir = undodir -- set the undo directory
vim.opt.autoread = true -- auto-reload changes if they were made outside nvim
vim.opt.autowrite = false -- do not auto-save

vim.opt.autochdir = false -- do not autochange directories
vim.opt.iskeyword:append("-") -- include - in words
vim.opt.path:append("**") -- include subdirs in search
vim.opt.clipboard:append("unnamedplus") -- set neovim to use the + register by default
vim.opt.signcolumn = "yes" -- alwyas show the sign column
