return {
	"Wansmer/langmapper.nvim",
	enabled = false,
	lazy = false,
	priority = 1,
	config = function()
		local langmapper = require("langmapper")
		langmapper.setup()
		langmapper.hack_get_keymap()
	end,
}
