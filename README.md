# neovim config

## requirements

* fzf
* cmake
* rg
* fd
* lazy.nvim
* luarocks
* lua 5.1
* Node (22)
* python 3.12
* * python 3.12-venv

## install

```bash
git clone git@github.com:lcavalcante/nvim.init.git ${HOME}/.config/nvim


nvim
```

```vim
:Mason

install pyright, ruff, lua_ls
```

## verify

inside nvim

```vim
:checkhealth lazy
:checkhealth lsp
```
