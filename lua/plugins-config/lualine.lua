--安装状态栏美化插件

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require('lualine').setup {
            options = {
                theme = 'auto',
                --theme = 'dracula-nvim',
                icons_enabled = true,
                component_separators = { left = '|', right = '|' },
                -- https://github.com/ryanoasis/powerline-extra-symbols
                -- section_separators = { left = " ", right = "" },
            },
        }
    end,
}
