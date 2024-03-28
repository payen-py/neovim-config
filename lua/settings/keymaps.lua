local keymap = vim.keymap

keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
keymap.set("v", "K", ":m '<-2<CR>gv=gv'")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Nvim Tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")
-- floaterm
keymap.set("n", "<leader>tn", ":FloatermNew<CR>")
keymap.set("n", "<leader>tt", ":FloatermToggle<CR>")
keymap.set("n", "<leader>th", ":FloatermPrev<CR>")
keymap.set("n", "<leader>tl", ":FloatermNext<CR>")
-- 设置lspconfig
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
keymap.set("n", "<space>d", vim.diagnostic.open_float)
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<space>q", vim.diagnostic.setloclist)
-- 设置Formatter
keymap.set("n", "<space>ff", ":FormatWrite<CR>")
-- 设置markdown preview快捷键
keymap.set("n", "<leader>mp", ":MarkdownPreview")
keymap.set("n", "<leader>mt", ":MarkdownPreviewToggle")
keymap.set("n", "<leader>ms", ":MarkdownPreviewStop")

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", ":sp | lua vim.lsp.buf.declaration()<CR>", opts)
		vim.keymap.set("n", "gd", ":sp | lua vim.lsp.buf.definition()<CR>", opts)
    vim.keymap.set('n', '<space>k', vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", ":sp | lua vim.lsp.buf.implementation()<CR>", opts)
		vim.keymap.set("n", "td", ":sp | lua vim.lsp.buf.type_definition()<CR>", opts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
	end,
})
