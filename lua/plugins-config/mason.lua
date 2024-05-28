--LSP插件管理器

return {
    {
        "williamboman/mason.nvim",
        --    "williamboman/nvim-lsp-installer",

        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end,
    },

    {

        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                -- 确保安装，根据需要填写
                ensure_installed = {
                    "jedi_language_server", --jedi-language-server
                    "lua_ls",               --lua-language-server
                    -- "pyre",                 --pyre
                    "pylsp",                --python-lsp-server
                    -- "sourcery",             --sourcery
                    -- "ruff_lsp",             --ruff-lsp
                    "jsonls",
                    "html",
                    "cssls",
                    "pyright",
                },
            })
        end,
    },

    {

        "neovim/nvim-lspconfig",
        config = function()
            -- vim.api.nvim_create_autocmd(LspAttach, {
            --     callback = function(args)
            --         local buf = args.buf
            --         vim.api.nvim_buf_set_keymap(buf, "n", "C-M-l", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true })
            --     end,
            -- })

            vim.keymap.set("n", "<leader>=", "<cmd>lua vim.lsp.buf.format()<CR>")
            require('lspconfig').pyright.setup {}
            require("lspconfig").lua_ls.setup { capabilities = capabilities, on_attach = on_attach, }
            require("lspconfig").pylsp.setup { capabilities = capabilities, on_attach = on_attach, }
            require("lspconfig").intelephense.setup {}
            require("lspconfig").cssls.setup {}
            require("lspconfig").html.setup {}
        end,
    },
}
