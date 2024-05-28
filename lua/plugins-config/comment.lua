-- 一键间加/去注释, 改代码的时候很有用
return {

    -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:

    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,

}


-- These mappings are enabled by default. (config: mappings.basic)
--
-- NORMAL mode
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
-- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
-- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
-- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
-- VISUAL mode
-- `gc` - Toggles the region using linewise comment
-- `gb` - Toggles the region using blockwise comment
