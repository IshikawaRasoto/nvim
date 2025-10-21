function ColorMyPencils(color)
	vim.cmd("colorscheme kanagawa")

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFLoat", {bg = "none"})

end

ColorMyPencils()
