# Vim config (`.vimrc`)

This repo includes my Vim configuration with:
- sane default editing settings
- Python-specific indentation + 79-char guides (PEP 8 style)
- linting + formatting via **ALE**
- plugin management via **vim-plug**

## Features

### General editor settings
- `syntax on`
- `filetype plugin indent on`
- Line numbers enabled (`set number`)
- 4-space indentation defaults:
  - `tabstop=4`
  - `shiftwidth=4`
  - `expandtab` (spaces, not tabs)
- C-style indentation enabled (`set cindent`)
- Highlight cursor line (`set cursorline`)
- Allow hidden buffers (`set hidden`)

### Python-specific behavior
Applied on `FileType python`:
- Enforce spaces/4-space indentation:
  - `expandtab`
  - `shiftwidth=4`
  - `softtabstop=4`
- Adjust indent behavior:
  - `indentkeys-=0#`
- PEP 8 helpers:
  - `colorcolumn=79`
  - `textwidth=79`
  - `formatoptions+=t`

## Plugin setup

This config uses **vim-plug** and installs:
- `dense-analysis/ale` — linting + formatting

### Install vim-plug
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Install plugins
Inside Vim:
```vim
:PlugInstall
```

## Python linting & formatting

ALE configuration:
- Linters: `flake8`, `ruff`
- Formatter: `black`
- Auto-format on save enabled

### Install tools
```bash
python -m pip install black flake8 ruff
```

If installed with `--user`, `~/.local/bin` is added to PATH inside Vim.

## Useful commands
- `:ALEInfo` — check configuration
- `:ALELint` — run linter
- `:ALEFix` — format buffer
- `:lopen` — show lint errors

## Notes
- Black defaults to 88 chars; Flake8 defaults to 79.
- Long strings/URLs may exceed limits by design.
