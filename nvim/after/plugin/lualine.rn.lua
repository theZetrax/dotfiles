require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = "codedark",
        padding = 2,
        separator = nil,
        component_separators = '',
        section_separators = ''
    },

    sections = {
        lualine_a = {
            {
                'mode',
                fmt = function(str) return str:sub(1,1) end,
                icons_enabled = true
            }
        },
        lualine_b = {'branch', 'diff', 'diagnostics' },
        lualine_c = {
            {
                'buffers',
                show_modified_status = true,
                max_length = vim.o.columns * 2 / 3,
                symbols = {
                    modified = ' ●',      -- Text to show when the buffer is modified
                    alternate_file = '#', -- Text to show to identify the alternate file
                    directory =  '',     -- Text to show when the buffer is a directory
                },
            }
        },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {},
        lualine_z = {'location'}
    }    
}
