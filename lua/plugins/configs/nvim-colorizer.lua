-- Use a protected call
local present, colorizer = pcall(require, "colorizer")

if not present then
	return
end

-- Load default setup
colorizer.setup()
