vim.g.mapleader = " "

local keymap = vim.keymap

-- --正常模式--
-- 移除映射
keymap.set("n", "r", "<nop>")

-- 快速移动
keymap.set("n", "H", "^")
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")
keymap.set("n", "L", "$")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>") -- no highlight

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") --水平增加窗口split vertical
keymap.set("n", "<leader>sh", "<C-w>h") --垂直增加窗口split horizontal

-- --插入模式--
--Esc
keymap.set("i", "jj", "<ESC>")
keymap.set("i", "kk", "<ESC>")

-- --视图模式--
--选中后shift+jk上下移动选中代码
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- --插件--
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
