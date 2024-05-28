--vim.g：全局作用域变量
--vim.o：普通作用域common
--vim.b：缓冲作用域buffer
--vim.w：窗口作用域window
--vim.bo：buffer-local配置项
--vim.wo：window-local配置项

--若不确定将变量放在哪个作用域，就放在vim.opt下。
--具体变量分类在：help文档中查询


------------以下为常见的基本配置------------------

-- 编码方式 utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 显示行号和行号宽度
vim.wo.number = true
vim.wo.numberwidth = 6
-- 使用相对行号
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线
vim.wo.colorcolumn = "160"
-- 缩进字符
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.shiftround = true
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = true
-- 边输入边搜索
vim.o.incsearch = true
-- 命令模式行高
vim.o.cmdheight = 1
-- 自动加载外部修改
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
vim.wo.wrap = false
-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap = "<,>,[,]"
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime
vim.o.updatetime = 300
-- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒，可根据需要设置
vim.o.timeoutlen = 500
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = false
vim.o.listchars = "space:·,tab:>-"
-- 补全增强
vim.o.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"
-- 补全显示10行
vim.o.pumheight = 10
-- 系统剪贴板
vim.o.clipboard = "unnamedplus"
-- 永远显示 tabline
vim.o.showtabline = 4
-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode = True 
-- 开启终端真彩
vim.termguicolors=true      
vim.wo.signcolumn = "yes"
-- 默认注释加一个空格
vim.g.NERDSpaceDelims = 1


------------以下为自定义的测试配置------------------
vim.g.python3_host_prog="E:/Python311/python.exe"
vim.cmd.colorscheme("catppuccin")


-- 启用语法检查
vim.g.ale_linters = {
    python = {'flake7'}
}
-- 设置背景透明
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]] 




