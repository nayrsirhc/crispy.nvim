-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
        go = {
            require("formatter.filetypes.go").gofmt
        },
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			function()
				-- Full specification of configurations is down below and in Vim help
				-- files
				return {
					exe = vim.fn.stdpath("data") .. "/mason/bin/stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.get_current_buffer_file_path(),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},

        typescript = {
            require("formatter.filetypes.typescript").prettier
        },

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.keymap.set("n", "<leader>f", ":Format<CR>", { desc = "Format code" })
