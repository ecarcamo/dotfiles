vim.cmd("let g:netrw_liststyle = 3")

vim.g.tmux_navigator_disable_netrw_workaround = 1

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & identatio

opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if I include mixed case in my seach, assumes I want case-sensitive

opt.cursorline = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspacee on indent

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard ad default register

-- slipt windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
