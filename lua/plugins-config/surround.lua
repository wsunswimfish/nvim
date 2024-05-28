-- 一个颇具特色的vim插件, 可以修改"环绕"的内容

return {
    "ur4ltz/surround.nvim",
    config = function()
        require"surround".setup {
            context_offset = 100,
            load_autogroups = false,
            mappings_style = "sandwich",
            map_insert_mode = true,
            quotes = {"'", '"'},
            brackets = {"(", '{', '['},
            space_on_closing_char = false,
            pairs = {
                nestable = { b = { "(", ")" }, s = { "[", "]" }, B = { "{", "}" }, a = { "<", ">" } },
                linear = { q = { "'", "'" }, t = { "`", "`" }, d = { '"', '"' } }
            },
            prefix = "s"
    }
    end
}
