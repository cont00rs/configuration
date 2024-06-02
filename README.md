# Configuration files

Prefetch scripts
```sh
./fetch.sh
```

Create symlinks
```sh
stow -v . -t $HOME
```

## Requirements

- Neovim package manager [`Packer`](https://github.com/wbthomason/packer.nvim)

  ```sh
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```

- Tree-sitter executable
- Fuzzy finder [`fzf`](https://github.com/junegunn/fzf)
