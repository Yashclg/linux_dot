local status_ok, code_runner = pcall(require, "code_runner")
if not status_ok then
	return
end

code_runner.setup {
	term = {
		position = "belowright",
		size = 12,
		mode = "startinsert"
	},
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		c = "cd $dir && g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
		cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
		python = "python -U $fileName",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
	},
}

vim.api.nvim_set_keymap('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
