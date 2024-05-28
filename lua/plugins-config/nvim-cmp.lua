--代码自动补全
--
--re

return {
    {
        "onsails/lspkind.nvim",
        event = { "VimEnter" },
    },
    -- Code snippet engine，使用LuaSnip作为代码补全引擎
    -- 使用cmp_luasnip作为nvim-cmp不全框架和LuaSnip引擎之间的桥梁
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        'saadparwaiz1/cmp_luasnip',
    },

    -- Auto-completion engine,核心插件，其他都是补全数据源
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "lspkind.nvim",
            "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
            "hrsh7th/cmp-buffer",   -- buffer auto-completion
            "hrsh7th/cmp-path",     -- path auto-completion
            "hrsh7th/cmp-cmdline",  -- cmdline auto-completion
        },
        config = function()
            local cmp = require 'cmp'
            local lspkind = require 'lspkind'
            cmp.setup {
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body)     -- For `vsnip` users.
                        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
                        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                        -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
                    end,
                },

                window = {
                    -- completion = cmp.config.window.bordered(),
                    -- documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    -- ['<C-Space>'] = cmp.mapping.complete(),
                    -- ['<C-e>'] = cmp.mapping.abort(),
                    -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                -- 上一个
                    ['<C-k>'] = cmp.mapping.select_prev_item(),
                    -- 下一个
                    ['<C-j>'] = cmp.mapping.select_next_item(),
                    -- 出现补全
                    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
                    -- 取消
                    ['<A-,>'] = cmp.mapping({
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
                    }),
                    -- 确认
                    -- Accept currently selected item. If none selected, `select` first item.
                    -- Set `select` to `false` to only confirm explicitly selected items.
                    ['<CR>'] = cmp.mapping.confirm({
                    select = true,
                    behavior = cmp.ConfirmBehavior.Replace
                    }),
                    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
                    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
                    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
                }),
                sources = cmp.config.sources({
                        { name = 'nvim_lsp' },
                        -- { name = 'vsnip' }, -- For vsnip users.
                        { name = 'luasnip' }, -- For luasnip users.
                        -- { name = 'ultisnips' }, -- For ultisnips users.
                        -- { name = 'snippy' }, -- For snippy users.
                    },
                    {
                        { name = 'buffer' },
                        { name = 'path' },
                    }),
                format = lspkind.cmp_format({
                    format = lspkind.cmp_format({
                        with_text = true, -- do not show text alongside icons
                        maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                        before = function(entry, vim_item)
                            -- Source 显示提示来源
                            vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                            return vim_item
                        end
                    })
                })
            }
        end,
    },
}
