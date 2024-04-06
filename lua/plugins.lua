return {
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.vim',
			{
				'nvim-telescope/telescope-fzf-native.nvim', -- README in case of install problems
				build = 'make',
				cond = function() -- only load when make installed
					return vim.fn.executable 'make' == 1
				end,
			},
			{ 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
		},
		config = function()
		end,
	},
}
