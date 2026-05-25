# Ghostty Starter Kit

The default macOS terminal looks like it hasn't changed since 1995. For designers and people new to the command line, that's enough to make it feel unapproachable before you've typed a single thing.

[Ghostty](https://ghostty.org) fixes that. It's a fast, native macOS terminal built by Mitchell Hashimoto that you can customize completely: colors, fonts, padding, blur effects, cursor style. It can look like a real design tool instead of a leftover system utility.

This repo gives you a commented starting point so you're not staring at a blank config file.

> **macOS only.** Ghostty is a native Mac app. These instructions assume you're on a Mac.

---

## Who this is for

Designers, creatives, and anyone new to the terminal who wants a setup that looks intentional. No prior terminal configuration experience needed.

If you already have a working config, there may still be settings here worth borrowing.

---

## Installing Ghostty

**Option 1: Download directly (easiest)**

Go to [ghostty.org](https://ghostty.org) and download the macOS app. Open the `.dmg` file and drag Ghostty to your Applications folder. Done.

**Option 2: Install via Homebrew (for those who want to go deeper)**

Homebrew is a free tool that lets you install software from the command line. If you want to start building that habit, installing Ghostty this way is a good first rep.

First, install Homebrew if you don't have it. Open Terminal (the default macOS app) and paste this:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

It will walk you through the setup. Once Homebrew is installed, run:

```
brew install --cask ghostty
```

Ghostty will download and install automatically. No dragging, no `.dmg` files.

---

## What's included

**`ghostty.config`**
Your Ghostty settings file. Covers colors, font, window padding, cursor style, shell integration, URL linking, scrollback, and keybindings. Includes two color options: a custom Claude-inspired palette or a single line to use any built-in theme. Every setting has a comment explaining what it does and why you'd want it.

**`starter.zshrc`**
A shell configuration file for zsh (the default shell on macOS). Covers environment setup, PATH management, command history, tab completion, Node version management via fnm, useful aliases, and a simple prompt. Written for humans, not just developers.

---

## How to use it

### Ghostty config

1. In this repo, click the `ghostty.config` file, then click the **Raw** button (top right of the file view). That opens the plain text file. Select all and copy it.
2. Open Ghostty. In the menu bar, click **Ghostty** and select **Settings**. This opens your config file automatically.
3. Paste the copied text in, then save. Most changes take effect the next time you open a Ghostty window. Some apply immediately.

### .zshrc

1. Open your terminal and run this command to open your existing `.zshrc` file in your default text editor:
   ```
   open ~/.zshrc
   ```
   If you have VS Code and want to use that instead, run `code ~/.zshrc`.

2. If the file is empty, paste in the full contents of `starter.zshrc` from this repo.

3. If you already have a `.zshrc`, review each section and add what's missing. Don't overwrite anything you already have without reading it first.

4. After saving, reload the file in your terminal by running:
   ```
   source ~/.zshrc
   ```
   You'll see any errors immediately. If nothing prints, it loaded cleanly.

---

## The color palette

The config gives you two paths. Pick the one that fits how much you want to customize.

**Option 1: Use a built-in theme**

Ghostty ships with hundreds of built-in themes. Preview them visually at [iterm2colorschemes.com](https://iterm2colorschemes.com), find the name you want at [ghostty.org/docs/features/theme](https://ghostty.org/docs/features/theme), then add one line to your config:

```
theme = TokyoNight
```

**Option 2: Use the Claude-inspired palette (default)**

A custom 16-color palette built around Claude's brand colors: warm dark backgrounds, muted accent tones, and soft contrast that's easy on the eyes during long sessions.

![Claude Style Colors — Ghostty Palette](palette-preview.png)

All hex values are in the config file with labels. Swap any color to make the palette your own.

---

## Where to go next

- **Custom font:** Set `font-family` to any monospace font installed on your Mac. Popular picks include [JetBrains Mono](https://www.jetbrains.com/lp/mono/), [Fira Code](https://github.com/tonsky/FiraCode), and [Maple Mono](https://github.com/subframe7536/maple-font). To install: download the font, open the file, and click Install Font. Then add the font name to your config exactly as it appears in Font Book.
- **Custom prompt:** The starter prompt is minimal by design. When you're ready for something more powerful, look at [Starship](https://starship.rs). It's easy to install and works great with Ghostty.
- **Full Ghostty docs:** [ghostty.org/docs](https://ghostty.org/docs)
- **Full config reference:** [ghostty.org/docs/config](https://ghostty.org/docs/config)

---

## Questions or suggestions

Open an issue or leave a comment on the [LinkedIn post](#) that brought you here.
