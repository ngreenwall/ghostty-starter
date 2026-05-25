# =============================================================================
# STARTER .zshrc — A beginner-friendly shell configuration for Ghostty users
# =============================================================================
# This file lives at: ~/.zshrc
# It runs every time you open a new terminal window or tab.
# After making changes, run: source ~/.zshrc
# That reloads the file without closing your terminal.
# =============================================================================


# --- ENVIRONMENT -------------------------------------------------------------
# EDITOR tells your terminal which app to use when something needs a text editor.
# This uses VS Code. Change "code" to "nano" or "vim" if you prefer something else.
export EDITOR='code --wait'

# LANG sets your language and character encoding.
# UTF-8 ensures emoji, accented characters, and symbols display correctly.
export LANG=en_US.UTF-8


# --- PATH MANAGEMENT ---------------------------------------------------------
# PATH is the list of folders your terminal searches when you run a command.
# typeset -U prevents the same folder from being added twice.
# ~/.local/bin is a common place for personal scripts and tools.
typeset -U path
path=("$HOME/.local/bin" $path)


# --- HOMEBREW ----------------------------------------------------------------
# Homebrew is the most popular package manager for macOS.
# It lets you install developer tools like git, node, and more from the terminal.
# Install it at: https://brew.sh
# This line runs Homebrew's setup so all its tools are available in your shell.
[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"


# --- HISTORY -----------------------------------------------------------------
# Your terminal remembers every command you've typed.
# HISTFILE is where that history is saved on disk.
# HISTSIZE is how many commands are kept in memory during a session.
# SAVEHIST is how many commands are written to the file when you close the terminal.
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# SHARE_HISTORY syncs history across multiple terminal windows in real time.
# HIST_IGNORE_SPACE means any command you prefix with a space won't be saved.
# Useful for one-off sensitive commands you don't want logged.
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE


# --- TAB COMPLETION ----------------------------------------------------------
# This enables smart tab completion — press Tab and your terminal will try to
# finish the command, file name, or flag you're typing.
# The "if" block checks whether the completion cache is stale (older than 24 hours)
# and only rebuilds it when necessary, which keeps your shell startup fast.
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi


# --- NODE VERSION MANAGER (fnm) ----------------------------------------------
# fnm lets you install and switch between multiple versions of Node.js.
# --use-on-cd automatically switches to the right Node version when you
# enter a project folder that has a .nvmrc or .node-version file.
# Install fnm first: https://github.com/Schniz/fnm
# If you're not using Node, you can delete this block.
eval "$(fnm env --use-on-cd --shell zsh)"


# --- ALIASES -----------------------------------------------------------------
# Aliases are shortcuts — type the short version, your terminal runs the full command.

# ll gives you a detailed directory listing with file sizes, permissions, and hidden files.
# -l = long format, -a = show hidden files, -h = human-readable file sizes
alias ll='ls -lah'

# gst is a quick shortcut for checking the status of a git repository.
alias gst='git status'

# upbrew updates Homebrew itself and then upgrades everything installed with it.
alias upbrew='brew update && brew upgrade'

# upnode installs the latest LTS (Long Term Support) version of Node.js
# and sets it as your default. LTS = stable and recommended for most projects.
alias upnode='fnm install --lts && fnm default lts-latest && fnm use default'

# upnpm updates npm (Node's package manager) and all globally installed npm packages.
alias upnpm='npm install -g npm@latest && npm update -g'


# --- PROMPT ------------------------------------------------------------------
# This controls what your terminal prompt looks like.
# The current format shows: username:current-folder #
#
# %F{1} = color 1 from your Ghostty palette (red/orange in Claude theme)
# %n    = your username
# %f    = reset color
# %F{4} = color 4 from your Ghostty palette (blue)
# %~    = current directory (~ = home folder)
# %F{7} = color 7 (light gray)
# %#    = shows # for normal users, % for root
#
# Want a different look? Try a tool like Starship: https://starship.rs
PROMPT='%F{1}%n%f:%F{4}%~%f %F{7}%#%f '
