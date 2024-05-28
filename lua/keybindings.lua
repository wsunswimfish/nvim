--设置主键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = { noremap = true, silent = true }
local map = vim.keymap.set

--vim.map("模式","按键","映射为",‘options“)
--模式：  
--n normal
--i insert
--v visual
--t terminal
--c command

------可视模式------

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)


------插入模式------

--替代ESC
map("i","jk","<ESC>")


------正常模式------

--取消高亮
map("n","<leader>nh",":nohl<CR>")

--新增窗口
map("n","<leader>sv","<C-w>v") --新增水平窗口
map("n","<leader>sh","<C-w>s") --新增垂直窗口
map("n","<leader>sc","<C-w>c") --关闭当前窗口
map("n","<leader>so","<C-w>o") --关闭当前以外的其他窗口

--窗口间跳转
map("n","<A-h>","<C-w>h")
map("n","<A-j>","<C-w>j")
map("n","<A-k>","<C-w>k")
map("n","<A-l>","<C-w>l")

--buffer间切换
map("n","<leader>n",":BufferLineCycleNext<CR>")
map("n","<leader>p",":BufferLineCyclePrev<CR>")

--打开和关闭左侧文件管理器
map("n","<leader>t",":NvimTreeToggle<CR>")

--telescope插件文件查找
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n','<F10>',':pyfile %<CR>')



--省略其他基础配置
