# 🚀 VicKyland's Neovim Configuration

![Neovim Version](https://img.shields.io/badge/Neovim-0.9+-green.svg?style=flat-square&logo=neovim)
![Lua Version](https://img.shields.io/badge/Lua-5.1+-blue.svg?style=flat-square&logo=lua)
![License](https://img.shields.io/badge/License-MIT-purple.svg?style=flat-square)

A sleek, modern Neovim configuration designed for efficiency and aesthetics. Built with Lua and optimized for performance, this setup transforms Neovim into a powerful IDE-like experience while maintaining Vim's legendary modal editing workflow.

```bash
git clone https://github.com/VicKyland/nvim ~/.config/nvim
```

## ✨ Features

### 🧩 Modular Plugin System
```lua
-- plugins.lua
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function() require('config.treesitter') end
  },
  -- ... other plugins
}
```

### 🌈 Beautiful UI Components
- **Statusline:** Custom-built with `feline.nvim`
- **Tabline:** Minimalist tab management
- **File Explorer:** `nvim-tree` with git integration
- **Syntax Highlighting:** Enhanced with Tree-sitter

### ⚡ Blazing Fast Performance
- Async operations with `plenary.nvim`
- Lazy-loaded plugins
- Optimized startup time (<50ms)

### 🔌 Essential Plugins
| Category       | Plugins                                                                 |
|----------------|-------------------------------------------------------------------------|
| **LSP**        | nvim-lspconfig, mason.nvim, null-ls.nvim                               |
| **Completion** | nvim-cmp, LuaSnip, friendly-snippets                                   |
| **Fuzzy Find** | telescope.nvim, fzf-lua                                                |
| **UI**         | nvim-web-devicons, feline.nvim, nvim-tree, indent-blankline.nvim       |
| **Editing**    | vim-surround, vim-commentary, nvim-autopairs                          |

## 🛠 Installation

### Requirements
- Neovim 0.9+ (nightly recommended)
- Nerd Font (e.g., FiraCode Nerd Font)
- Git 2.0+

### Quick Start
```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.bak

# Clone repository
git clone https://github.com/VicKyland/nvim ~/.config/nvim

# Start Neovim and install plugins
nvim +PackerSync
```

## 🎨 Theme Showcase

### Gruvbox Theme
![Gruvbox Theme](https://via.placeholder.com/800x400/282828/ebdbb2?text=Gruvbox+Theme+Preview)

### Tokyonight Theme
![Tokyonight Theme](https://via.placeholder.com/800x400/1a1b26/a9b1d6?text=Tokyonight+Theme+Preview)

## ⌨️ Key Bindings

### Navigation
| Key          | Action                     |
|--------------|----------------------------|
| `<leader>e`  | Toggle file explorer       |
| `<C-h/j/k/l>`| Window navigation          |
| `<leader>f`  | Find files (Telescope)     |
| `<leader>g`  | Live grep (Telescope)      |

### Editing
| Key          | Action                     |
|--------------|----------------------------|
| `gcc`        | Toggle comment             |
| `gs`         | Surround operations        |
| `<C-s>`      | Save file                  |
| `<leader>p`  | Paste without yanking      |

### LSP & Diagnostics
| Key          | Action                     |
|--------------|----------------------------|
| `gd`         | Go to definition           |
| `gr`         | References                 |
| `K`          | Hover documentation        |
| `<leader>d`  | Open diagnostics           |

## 🧩 Customization

### Changing Theme
```lua
-- lua/config/colorscheme.lua
vim.cmd.colorscheme('tokyonight-night')  -- Change to your preferred theme
```

### Adding Plugins
```lua
-- lua/plugins.lua
return {
  -- ... existing plugins
  {
    'github/copilot.vim',  -- Add new plugin
    config = function() 
      vim.g.copilot_no_tab_map = true
    end
  }
}
```

## 🤝 Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository
2. Create a new branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a pull request

## 📜 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<p align="center">
  <em>"The power of Vim with the beauty of modern tooling"</em><br>
  <a href="https://github.com/VicKyland/nvim">Explore the code</a> • 
  <a href="https://neovim.io">Neovim</a> • 
  <a href="https://www.lua.org">Lua</a>
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-mark.svg" width="100">
</p>