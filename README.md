# Luna (Quickshell Edition) 🌙

This is a specialized fork of the original [luna.nvim](https://github.com/WTFox/luna.nvim) theme, explicitly designed and optimized for dynamic integration with **Quickshell**.

> [!NOTE]
> 🎯 **Designed for Minflair**
> This theme was primarily built to be used alongside my personal Quickshell environment: [**Minflair**](https://github.com/t4lentles5/minflair). However, it is fully decoupled and can easily be adapted for any other Quickshell setup or dynamic theming environment that passes `vim.g.qs_colors` to Neovim!

## ✨ Features

- **Dynamic Theming via Quickshell**: The entire color palette is driven by Quickshell. It reads `vim.g.qs_colors` to instantly apply your desktop's generated background and accent colors to Neovim.
- **Real-time Synchronization**: Fully compatible with file watchers for zero-delay live reloading. Whenever you change your wallpaper or toggle Dark Mode in Quickshell, Neovim updates instantly without needing a restart.
- **Dark & Light Mode Support**:
  - Automatically detects `vim.o.background`.
  - Uses the original pastel colors for Dark Mode.
  - Implements a brand-new, optimized dark-syntax palette for Light Mode, ensuring maximum readability on white/light backgrounds.
- **Debloated & Pure**: Removed all redundant `extras` (Kitty, Starship, etc.) since Quickshell already handles system-wide theming. This fork is 100% focused on making Neovim look perfect.
- **Seamless Plugin Integration**: Native overrides for Telescope, Neo-tree, Trouble, Lualine, and Nvim-Notify, ensuring that everything from float borders to popup titles respects your Quickshell accent colors.

## 📦 Installation (Lazy.nvim)

```lua
{
  "t4lentles5/luna.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

> [!TIP]
> **Looking for the dynamic Quickshell integration?**
> Since `luna.nvim` exposes the `on_colors` and `on_highlights` hooks in `opts`, you can map its palette dynamically. Check out my [Neovim configuration repository](https://github.com/t4lentles5/minflair/tree/main/config/nvim) to see the exact code used to bind this theme to Quickshell's generated variables (`vim.g.qs_colors`).

## 🛠️ Modifying the Theme

- **Palettes**: Edit `lua/luna/palette_dark.lua` or `lua/luna/palette_light.lua` to change the base syntax colors.
- **Highlights**: Add any overrides to the `on_highlights` block in your Neovim config.

---

_Forked and customized specifically for Quickshell dynamic theming._
