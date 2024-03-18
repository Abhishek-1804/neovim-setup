-- Function to automatically require all Lua files in a given directory
local function require_configs(directory)
    local scan_dir = require'plenary.scandir'
    local config_files = scan_dir.scan_dir(vim.fn.stdpath('config') .. '/' .. directory, {
        depth = 1,
        search_pattern = "%.lua$", -- Only include .lua files
    })

    for _, file in ipairs(config_files) do
        local file_require_path = file:match("lua/(.+).lua$"):gsub("/", ".")
        require(file_require_path)
    end
end

-- Load all config files
require_configs('lua')
require_configs('lua/config')
