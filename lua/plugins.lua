--设置主键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--插件管理器

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

--以下被注释的代码为检查是否存在lazy.nvim，若不存在则自动下载。
--因为本地已正确下载，故屏蔽掉。
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

--引入plugins-config目录的插件,各插件的配置文件以return的方式接受lazy管理。
require("lazy").setup { { import = "plugins-config" } }
