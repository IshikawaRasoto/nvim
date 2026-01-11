-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	use{ "rebelot/kanagawa.nvim" }

	use ( 'tpope/vim-fugitive' )

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {
                signs = {
                    add          = { text = '+' },
                    change       = { text = '│' },
                    delete       = { text = '-' },
                    topdelete    = { text = '‾' },
                    changedelete = { text = '~' },
                },
                signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
                numhl = true,
                on_attach = function(bufnr)
                    local gs = package.loaded.gitsigns

                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.silent = opts.silent ~= false
                        vim.keymap.set(mode, l, r, opts)
                    end

                    map('n', ']c', function()
                        if vim.wo.diff then return ']c' end
                        vim.schedule(function() gs.next_hunk() end)
                        return '<Ignore>'
                    end, {expr=true})

                    map('n', '[c', function()
                        if vim.wo.diff then return '[c' end
                        vim.schedule(function() gs.prev_hunk() end)
                        return '<Ignore>'
                    end, {expr=true})
                end,
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = 'eol',
                    delay = 500,
                    virt_text_prefix = '  ',
                },
                watch_gitdir = {
                    interval = 1000,
                    follow_files = true
                },

                preview_config = {
                    border = "rounded",
                }
            }
        end
    }
	
end)
