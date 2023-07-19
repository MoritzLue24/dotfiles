# dotfiles

## Neovim
The mason installation of clangd (language server for c/c++) doesnt work (i think wrong standard library directory) sometimes for some reason.
So install clangd seperatly (for example from (MinGW)[https://www.mingw-w64.org/downloads/#llvm-mingw]),
then replace the mason installation path from the nvim-data/mason/bin/clangd.cmd file with the mingw/bin/clangd.exe path
