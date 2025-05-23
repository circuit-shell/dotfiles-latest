return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true,
			show_end_of_buffer = false,
			term_colors = false,
			dim_inactive = {
				enabled = false,
				shade = "dark",
				percentage = 0.15,
			},
			no_italic = false,
			no_bold = false,
			no_underline = false,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			color_overrides = {
				all = {
					rosewater = "#FFB86C",
					flamingo = "#FF79C6",
					pink = "#FF79C6",
					mauve = "#BD93F9",
					red = "#FF5555",
					maroon = "#FF5555",
					peach = "#FFB86C",
					yellow = "#F1FA8C",
					green = "#50FA7B",
					teal = "#33AFFF",
					sky = "#33AFFF",
					sapphire = "#33AFFF",
					blue = "#BD93F9",
					lavender = "#FF79C6",
					text = "#F8F8F2",
					subtext1 = "#F8F8F2",
					subtext0 = "#BFBFBF",
					overlay2 = "#6c7086",
					overlay1 = "#7970A9",
					overlay0 = "#6272A4",
					surface2 = "#414458",
					surface1 = "#343746",
					surface0 = "#282A36",
					base = "#282A36",
					mantle = "#21222C",
					crust = "#191A21",
				},
			},
			custom_highlights = {
				["@punctuation.delimiter"] = { fg = "#F8F8F2" },
				["Delimiter"] = { fg = "#F8F8F2" },
				["DiagnosticUnnecessary"] = { fg = "#FF5555" },

				["DapBreakpoint"] = { fg = "#FF5555" },
				["DapStopped"] = { fg = "#FFB86C" },
				["DapStoppedLine"] = { bg = "#493B30" },
				["DapBreakpointRejected"] = { fg = "#848484" },
				["DapLogPoint"] = { fg = "#33AFFF" },
				["DapBreakpointCondition"] = { fg = "#E51400" },
			},

			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
