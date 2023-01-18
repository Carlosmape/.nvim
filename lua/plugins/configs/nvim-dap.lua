local present, dap = pcall(require, "dap")

if not present then
	return
end

-- Custom signs
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointCondition', {text='🟡', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='▶️', texthl='', linehl='', numhl=''})

-- Custom mappings
vim.api.nvim_set_keymap('', '<C-b>', ":lua require'dap'.toggle_breakpoint()<CR>", { silent = true })
vim.api.nvim_set_keymap('', '<A-b>', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { silent = false })
vim.api.nvim_set_keymap('', '<F5>',  ":lua require'dap'.continue()<CR>", { silent = false })
vim.api.nvim_set_keymap('', '<F10>', ":lua require'dap'.step_over()<CR>", { silent = false })
vim.api.nvim_set_keymap('', '<F11>', ":lua require'dap'.step_into()<CR>", { silent = false })
vim.api.nvim_set_keymap('', '<F12>', ":lua require'dap'.step_out()<CR>", { silent = false })

-- Another adapters here....
-- Python one (bebugpy already managed by specific plugin nvim-dap-python)
-- dap.adapters.python = {
--   type = 'executable';
--   command = 'python';
--   args = { '-m', 'debugpy.adapter' };
-- }

-- dap.configurations.python = {
--   {
--     -- The first three options are required by nvim-dap
--     type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
--     request = 'launch';
--     name = "Launch file";

--     -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

--     program = "${file}"; -- This configuration will launch the current file if used.
--     pythonPath = function()
--       -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
--       -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
--       -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
--       local cwd = vim.fn.getcwd()
--       if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
--         return cwd .. '/venv/bin/python'
--       elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
--         return cwd .. '/.venv/bin/python'
--       else
--         return '/usr/bin/python'
--       end
--     end;
--   },
-- }
