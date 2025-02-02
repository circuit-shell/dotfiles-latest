return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		quickfile = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		styles = {
			notification = {
				wo = { wrap = true }, -- Wrap notifications
			},
		},
	},
	keys = {
		{
			"<leader>nn",
			function()
				Snacks.notifier.hide()
			end,
			desc = "Dismiss All Notifications",
		},
		{
			"<leader>q",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete Buffer",
		},
		{
			"<leader>gG",
			function()
				Snacks.gitbrowse()
			end,
			desc = "Git Browse Remote",
		},
		-- {
		-- 	"<leader>gf",
		-- 	function()
		-- 		Snacks.lazygit.log_file()
		-- 	end,
		-- 	desc = "Lazygit Current File History",
		-- },
		-- {
		-- 	"<leader>gl",
		-- 	function()
		-- 		Snacks.lazygit.log()
		-- 	end,
		-- 	desc = "Lazygit Log (cwd)",
		-- },
		{
			"<leader>rf",
			function()
				Snacks.rename()
			end,
			desc = "Rename File",
		},
		{
			"]]",
			function()
				Snacks.words.jump(vim.v.count1)
			end,
			desc = "Next Reference",
		},
		{
			"[[",
			function()
				Snacks.words.jump(-vim.v.count1)
			end,
			desc = "Prev Reference",
		},
	},
	init = function()
		vim.api.nvim_create_autocmd("User", {
			pattern = "VeryLazy",
			callback = function()
				-- Setup some globals for debugging (lazy-loaded)
				_G.dd = function(...)
					Snacks.debug.inspect(...)
				end
				_G.bt = function()
					Snacks.debug.backtrace()
				end
				vim.print = _G.dd -- Override print to use snacks for `:=` command

				-- Create some toggle mappings
				Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
				Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
				Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
				Snacks.toggle.diagnostics():map("<leader>ud")
				Snacks.toggle.line_number():map("<leader>ul")
				Snacks.toggle.treesitter():map("<leader>uT")
				Snacks.toggle.inlay_hints():map("<leader>uh")
				-- add one for copilot
			end,
		})
	end,
}
