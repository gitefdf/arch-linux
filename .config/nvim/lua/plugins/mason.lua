return {
	'mason-org/mason.nvim',
	event = 'VeryLazy',
	dependencies = {
		'neovim/nvim-lspconfig',
		'mason-org/mason-lspconfig.nvim',
	},

	config = function ()
		require('mason').setup()
		local registry = require('mason-registry')
		--定义名为 setup 局部函数，接受 name config 参数
		local function setup(name, config)
			local success, package = pcall(registry.get_package, name)
			if success and not package:is_installed() then
				package:install()
			end

			local nvim_lsp = require('mason-lspconfig').get_mappings().package_to_lspconfig[name]
			config.capabilities = require('blink.cmp').get_lsp_capabilities()
			-- 禁用 lsp 格式化
			-- config.on_attach = function (client)
			-- 	client.server_capabilities.documentFormattingProvider = false
			-- 	client.server_capabilities.documentFormattingProviderFormattingProvider = false
			-- end
			-- require('lspconfig')[nvim_lsp].setup(config)
			vim.lsp.config(nvim_lsp, config)
			vim.lsp.enable(nvim_lsp)
		end

		local servers = {
			['lua-language-server'] = {
				settings = {
					Lua = {
						diagnostics = {
							globals = {'vim'}
						}
					}
				}
			},
			['texlab'] = {},
		}
		for server, config in pairs(servers) do
			setup(server, config)
		end
		-- vim.cmd("LspStart")
		vim.diagnostic.config({
			virtual_text = true,
			--virtual_lines = true,
			update_in_insert = true,
		})
	end
}
