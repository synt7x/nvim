local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add({
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } }
	},
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		requires = { { "nvim-lua/plenary.nvim" } }
	},
	{ 'shaunsingh/nord.nvim', branch = 'master' },
	{ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
	{
		"windwp/nvim-autopairs", event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	},
	{ "yazeed1s/minimal.nvim" },
	{
    	"williamboman/mason.nvim"
	},
	{
		"williamboman/mason-lspconfig.nvim"
	},
	{
		"neovim/nvim-lspconfig"
	},
	{
		"nvim-lualine/lualine.nvim",
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	},
	{
		"ahmedkhalf/project.nvim",
		config = function()
			require('project_nvim').setup {}
		end
	},
	{
		'hrsh7th/nvim-cmp',
	},
	{
		'hrsh7th/cmp-nvim-lsp'
	},
	{
		'onsails/lspkind.nvim'
	}
})

