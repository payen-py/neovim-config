local opt = vim.opt

-- line number
opt.number = true
opt.relativenumber = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 启用系统剪切板
opt.clipboard:append("unnamedplus")

-- 分割窗口位置
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd.colorscheme("catppuccin-macchiato")

-- 自动关闭vim如果只有一个nvimtree
vim.api.nvim_exec(
	[[
  autocmd BufEnter * ++nested lua if vim.fn.winnr('$') == 1 and vim.fn.bufname() == 'NvimTree_' .. vim.fn.tabpagenr() then vim.cmd('quit') end
]],
	false
)
-- 设置neovim打开文件后回到上次光标位置
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		local line = vim.fn.line("'\"")
		if line > 1 and line <= vim.fn.line("$") then
			vim.cmd.normal("g'\"")
		end
	end,
})
-- 设置每次打开git项目文件时用lazygit进行追踪
-- 方便配合telescope查找git历史
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		require("lazygit.utils").project_root_dir()
	end,
})
