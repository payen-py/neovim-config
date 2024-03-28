## 我的Neovim配置（自用）

### Requirements

- `Neovim`版本`0.9.x`
- 脚本安装插件[`lazy.vim`](https://github.com/folke/lazy.nvim)
- 需要的各种依赖可以去具体的github仓库下查看

### Uasage

在本地`Home`目录下的`.config`文件夹下创建`nvim`文件夹，并将仓库内容下载进去

### Installd Plugins

- 主题：catppuccin/nvim

  > 个人比较喜欢，对于很多其他的插件也有适配，比如vim-tree

- nvim-lualine/lualine.nvim

  > 为neovim添加状态栏，配置后可适配主题

- nvim-tree/nvim-tree.lua

  > 文件树，需要使用nerd字体，我是用的是`DroidSansM`

- nvim-treesitter/nvim-treesitter

  > 语法高亮显示

- p00f/nvim-ts-rainbow

  > 括号不同颜色显示

- williamboman/mason.nvim

  > 用于安装LSP的server，非常方便

- williamboman/mason-lspconfig.nvim

  > 连接了nvim-lspconfig，配置更加方便。

- hrsh7th/nvim-cmp

  > 基于LSP的代码提示，用vim写代码最重要的插件

- numToStr/Comment.nvim

  > 用于快速注释代码，单行注释快捷键默认是`gcc`，也支持块状注释

- windwp/nvim-autopairs

  > 用于各种符号的配对，比如`()`和`{}`

- akinsho/bufferline.nvim

  > 基于vim的buffer，用于显示之前打开的各个文件的标签

- lewis6991/gitsigns.nvim

  > 在`git`项目文件下，可以显示代码的修改情况

- nvim-telescope/telescope.nvim

  > 功能强大的搜索插件，可以在项目目录下快速查找文件和搜索内容

- voldikss/vim-floaterm

  > 炫酷的浮动终端，可以在使用vim的时候打开terminal

- mhartington/formatter.nvim

  > 格式化代码，可以使用`Mason`快速下载格式化的工具

- iamcco/markdown-preview.nvim

  > 支持markdown文件的快速预览，可以与文件修改同步
