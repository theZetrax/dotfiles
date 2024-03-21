if vim.g.vscode then
	-- VSCode extension
	vim.cmd([[runtime ./vscode.vim]])
else
	-- ordinary Neovim
	-- Clear Loaded nvim module
	-- TODO REMOVE AFTER USE, ONLY FOR CONFIG DEVELOPMENT
	require("nvim")
end
