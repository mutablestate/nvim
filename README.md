# Neovim Config

This is a Lua config so requires Neovim > 0.5 (nightly build).

Main languages supported:

* Svelte
* Vue
* Elixir

## Setup

1. Clone files to `~/.config/nvim`
2. Run `nvim` in your terminal and `:PaqInstall`
3. Install `ripgrep` and add the lines below to `.bashrc` or preference.

```
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --no-ignore-vcs --glob '!{node_modules,.git}'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
```


## QoL Shortcuts

* Ctrl-s : save
* Ctrl-p : file finder (fzf)
* Ctrl-\ : toggle terminal
* Ctrl-h : switch to left window
* Ctrl-j : switch to down window
* Ctrl-k : switch to up window
* Ctrl-l : switch to right window

