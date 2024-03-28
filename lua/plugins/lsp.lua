require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "cmake", "clangd", "pylsp", "jsonls", "yamlls", "marksman" },
})

-- Set up lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
		})
	end,
})

-- require("lspconfig").lua_ls.setup({
-- 	capabilities = capabilities,
-- })
-- require("lspconfig").cmake.setup({
-- 	capabilities = capabilities,
-- })
-- require("lspconfig").clangd.setup({
-- 	capabilities = capabilities,
-- })
-- require("lspconfig").pylsp.setup({
-- 	capabilities = capabilities,
-- })
-- require("lspconfig").jsonls.setup({
-- 	capabilities = capabilities,
-- })
-- require("lspconfig").yamlls.setup({
-- 	capabilities = capabilities,
-- })
-- require('lspconfig').ccls.setup {
--     init_options = {
--         compilationDatabaseDirectory = "build",
--         index = {
--             threads = 0,
--         },
--         clang = {
--             excludeArgs = { "-frounding-math" },
--         },
--     },
--     capabilities = capabilities
-- }
