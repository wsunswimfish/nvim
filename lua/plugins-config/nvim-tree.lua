--文件夹浏览美化

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            sort = { sorter = "case_sensitive", },
            view = {
                -- 宽度
                width = 56,
                -- 也可以 'right'
                side = 'right',
                -- 隐藏根目录
                -- hide_root_folder = false,
            },
            renderer = { group_empty = true, },
            filters = { dotfiles = true, },
        }
        --打开和关闭左侧文件管理器
        vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
    end,
}
