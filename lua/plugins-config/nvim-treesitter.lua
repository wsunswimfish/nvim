--语法解析器

return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter.configs").setup {
            -- 安装 language parser
            -- :TSInstallInfo 命令查看支持的语言
            -- A list of parser names,or "all" (the five listed parsers should always be installed)
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python","json","css","html","typescript","sql","php","markdown" },
            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,
            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,
            -- List of parsers to ignore installing (or "all")
            ignore_install = { "c" },
            -- If you need to change the installation directory of the parsers (see -> Advanced Setup)
            -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

            --代码高亮模块
            highlight = {
                enable = true,
                -- list of language that will be disabled
                disable = { "c", "rust" },
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            },

            --增量选择模块
            incremental_selection = {
                enable = true,
                --用回车和退格来扩大和收敛选择范围
                keymaps = {
                    init_selection = "<CR>",
                    node_incremental = "<CR>",
                    node_decremental = "<BS>",
                    scope_incremental = "<TAB>",
                },
            },

            --代码缩进模块,“=”对选中的代码格式化，例如“gg=G”选中所有进行格式化。
            indent = {
                enable = true,
            },

            autotag = { enable = true },

            rainbow = { enable = true },
        }

        -- 开启 Folding折叠功能，默认zc折叠{}中的内容，zo打开
        vim.wo.foldmethod = 'expr'
        vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
        -- 默认不要折叠
        -- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
        vim.wo.foldlevel = 99

        --telescope插件文件查找
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,


}
