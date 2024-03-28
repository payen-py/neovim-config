local npairs = require("nvim-autopairs")
local Rule = require("nvim-autopairs.rule")

npairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string", "source" },
		javascript = { "string", "template_string" },
	},
	fast_wrap = {
		map = "<M-e>",
		chars = { "{", "[", "(", '"', "'" },
		pattern = [=[[%'%"%)%>%]%)%}%,]]=],
		end_key = "$",
		keys = "qwertyuiopzxcvbnmasdfghjkl",
		check_comma = true,
		highlight = "Search",
		highlight_grey = "Comment",
	},
})

-- 使用treesitter检查括号对
local ts_conds = require("nvim-autopairs.ts-conds")
-- press % => %% only while inside a comment or string
npairs.add_rules({
	Rule("%", "%", "lua"):with_pair(ts_conds.is_ts_node({ "string", "comment" })),
	Rule("$", "$", "lua"):with_pair(ts_conds.is_not_ts_node({ "function" })),
})

-- 配置这个使得自动补全会把括号带上
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
