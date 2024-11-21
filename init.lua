local M = {}

M.commands = require("gapped.commands")

function M.setup()
	vim.api.nvim_create_user_command('SayHello', M.commands.say_hello, {})
end

return M
