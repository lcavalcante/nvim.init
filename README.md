# neovim config

## requirements

* fzf
* cmake
* rg
* fd
* packer nvim

## install


```bash
# maybe needed to rename after
mv after _after
open `nvim ./lua/lcavalcante/packer.lua`
mv _after after
```

```vim
:so
:PackerSync
```

