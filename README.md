# Neovim Config

This is a Lua config so requires Neovim > 0.5 (nightly build).

Main languages supported:

* Svelte
* Vue
* Elixir

## Setup

1. Clone files to `~/.config/nvim`
3. Install `Paq` package manager `git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim`
4. Run `nvim` in your terminal and fetch packages `:PaqInstall`
5. Install recursive search tool `sudo apt install ripgrep` and add the lines below to `.bashrc`

```
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --no-ignore-vcs --glob '!{node_modules,.git}'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
```

6. Add Conquer of Completion extensions

```
:CocInstall coc-elixir coc-json coc-prettier coc-svelte coc-tsserver coc-vetur`
```

7. Restart `nvim`

## QoL Shortcuts

* Ctrl-s : save
* Ctrl-p : file finder (fzf)
* Ctrl-\ : toggle terminal
* Ctrl-h : switch to left window
* Ctrl-j : switch to down window
* Ctrl-k : switch to up window
* Ctrl-l : switch to right window

