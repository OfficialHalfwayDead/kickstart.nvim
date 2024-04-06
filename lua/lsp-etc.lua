return {
	{
		'neovim/nvim-lspconfig', -- required to make it work
		dependencies = {
			{ 'williamboman/mason.nvim', config=true }, -- for easy lsp download
			'williamboman/mason-lspconfig.nvim',        -- for auto lsp config
			'folke/neodev.nvim',                        -- for init.lua and other vim lsp
		},
	}
}
