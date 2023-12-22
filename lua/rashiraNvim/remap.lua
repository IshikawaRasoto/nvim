vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Navergar entre os Arquivos

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Ao selecionar, pode arrastar
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv") -- Ao pesquisar palavras, sempre as mantém no meio da tela.
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP") -- Ao colar sobre uma palavra selecionada, não perde o conteúdo copiado

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
















