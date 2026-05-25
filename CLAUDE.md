# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A public starter kit for [Ghostty](https://ghostty.org), the native macOS terminal app. Contains a commented Ghostty config and a beginner-friendly `.zshrc`. Intended to be shared via LinkedIn and discovered on GitHub.

## Files

- `ghostty.config` — Ghostty settings file. Installs to `~/.config/ghostty/config`
- `starter.zshrc` — Shell config. Installs to `~/.zshrc`
- `README.md` — Setup instructions and color palette reference for GitHub visitors

## Working in this repo

No build steps, dependencies, or tests. All files are plain text configs.

When editing `ghostty.config` or `starter.zshrc`, maintain the comment style: plain-language explanations of what each setting does and why, written for a non-developer audience.

The color palette in `ghostty.config` is inspired by Claude's brand colors. If updating colors, keep the full 16-color palette intact (palette = 0 through palette = 15).

Push directly to main. No PRs needed for a single-contributor repo.
