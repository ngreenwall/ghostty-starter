# Ghostty Starter Kit

The default macOS terminal looks like it hasn't changed since 1995. For designers and people new to the command line, that's enough to make it feel unapproachable before you've typed a single thing.

[Ghostty](https://ghostty.org) fixes that. It's a fast, native macOS terminal built by Mitchell Hashimoto that you can customize completely: colors, fonts, padding, blur effects, cursor style. It can look like a real design tool instead of a leftover system utility.

This repo gives you a commented starting point so you're not staring at a blank config file.

---

## Who this is for

Designers, creatives, and anyone new to the terminal who wants a setup that looks intentional. No prior terminal configuration experience needed.

If you already have a working config, there may still be settings here worth borrowing.

---

## What's included

**`ghostty.config`**
Your Ghostty settings file. Covers colors, font, window padding, cursor style, shell integration, URL linking, scrollback, and keybindings. Every setting has a comment explaining what it does and why you'd want it.

**`starter.zshrc`**
A shell configuration file for zsh (the default shell on macOS). Covers environment setup, PATH management, command history, tab completion, Node version management via fnm, useful aliases, and a simple prompt. Written for humans, not just developers.

---

## How to use it

### Ghostty config

1. Open Ghostty. In the menu bar, go to **Ghostty > Settings** or press `Cmd+,` (comma). This creates and opens your config file automatically.
2. Copy the contents of `ghostty.config` from this repo into that file.
3. Save it. Most changes take effect the next time you open a Ghostty window. Some apply immediately.

Your config file lives at: `~/.config/ghostty/config`

### .zshrc

1. Open your terminal and run this command to open your existing `.zshrc` file in VS Code:
   ```
   code ~/.zshrc
   ```
   If you don't have VS Code, you can use any text editor. The file is at your home folder root.

2. If the file is empty, paste in the full contents of `starter.zshrc` from this repo.

3. If you already have a `.zshrc`, review each section and add what's missing. Don't overwrite anything you already have without reading it first.

4. After saving, reload the file in your terminal by running:
   ```
   source ~/.zshrc
   ```
   You'll see any errors immediately. If nothing prints, it loaded cleanly.

---

## The color palette

The Ghostty theme uses a 16-color palette inspired by Claude's brand colors: warm dark backgrounds, muted accent tones, and soft contrast that's easy on the eyes during long sessions.

| Role | Color |
|---|---|
| Background | `#1C1B1A` |
| Foreground | `#F2EDE6` |
| Cursor | `#DA7756` |
| Red (errors) | `#DA7756` |
| Green (success) | `#6B9E7A` |
| Blue (links) | `#8B9DC3` |
| Cyan (paths) | `#7AABAA` |

All values are in the config file. Swap any hex code to make the palette your own.

---

## Where to go next

- **Custom font:** Set `font-family` to any monospace font installed on your Mac. Popular picks include [JetBrains Mono](https://www.jetbrains.com/lp/mono/), [Fira Code](https://github.com/tonsky/FiraCode), and [Maple Mono](https://github.com/subframe7536/maple-font).
- **Custom prompt:** The starter prompt is minimal by design. When you're ready for something more powerful, look at [Starship](https://starship.rs). It's easy to install and works great with Ghostty.
- **Full Ghostty docs:** [ghostty.org/docs](https://ghostty.org/docs)
- **Full config reference:** [ghostty.org/docs/config](https://ghostty.org/docs/config)

---

## Questions or suggestions

Open an issue or leave a comment on the [LinkedIn post](#) that brought you here.
