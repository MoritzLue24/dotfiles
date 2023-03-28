local dap = require('dap')

dap.adapters.codelldb = {
	type = 'server',
	port = '${port}',
	executable = {
		command = 'C:\\Users\\molue\\AppData\\Local\\nvim\\lldb\\extension\\adapter\\codelldb.exe',
		args = {'--port', "${port}"}
	}
}

dap.configurations.rust = {
	{
		name = 'Launch file',
		type = 'codelldb',
		request = 'launch',
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${workspaceFolder}'
	}
}
