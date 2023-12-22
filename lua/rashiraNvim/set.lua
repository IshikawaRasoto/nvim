vim.opt.nu = true -- Número nas linhas
vim.opt.relativenumber = true -- Números relativos à linha atual

vim.opt.tabstop = 4 -- Identação de 4 espaçoes
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
vim.opt.incsearch = true -- Incremental Search usando /<string>

vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- Ao scrollar para baixo ou para cima, sempre haverão 8 linhas pelo menos
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
