vim.keymap.set("n", "<leader>pd", "<Esc>iecho\"<pre>\";print_r();die();<Esc><S-v>/\\%V(<CR><S-v>li$");

function SetTab(size)
	vim.opt.tabstop = size
	vim.opt.softtabstop = size
	vim.opt.shiftwidth = size
end

vim.cmd("command! -nargs=1 SetTabSize lua SetTab(tonumber(<args>))")

