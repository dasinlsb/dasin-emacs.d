# dasin's Emacs configuration

## Installation

1. Backup and remove your original configuration, like:
```sh
mv ~/.emacs.d ~/.emacs.d.bak
```

2. Clone this repository and submodule as new configuration
```sh
git clone https://github.com/dasinlsb/dasin-emacs.d ~/.emacs.d
cd ~/.emacs.d
git submodule update --init
```

> Windows users may replace `~/emacs.d` with `~\AppData\Roaming\.emacs.d`

## Preferred shortcuts

+ `C-c ,`: set-mark-command

+ `C-c =/-`: expand/contract region (hydra)

+ `C-c l`: lsp (hydra)

+ `C-c s`: awesome-tab (hydra)

+ `C-c m`: mc (hydra)

## References

[purcell's Emacs configuration](https://github.com/purcell/emacs.d)
