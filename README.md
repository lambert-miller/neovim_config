# Neovim config

Slightly altered Astro Vim (https://github.com/AstroNvim/AstroNvim)
- added files marked with underscore (e.g. '_file.lua')

## Installation

Install dependencies
- nvim newest version
- lua (v5.1 as of 04.05.24)
- clang
- Nerdfont (https://www.nerdfonts.com/font-downloads)
    - Move to ~/.local/share/fonts

Clone the repo into the config location
```
git clone https://github.com/LennardMarx/neovim_config.git ~/.config/nvim
```
Neorg installation (inside nvim):
```
:Lazy build luarocks.nvim
:Lazy build neorg
:Neorg sync-parsers
```

For telescope word search:
```
sudo apt install ripgrep
```

#### Usage
Neorg prefix: space -> ,

#### VimTex on Ubuntu
```
sudo apt install latexmk zathura
sudo apt install texlive-latex-recommended texlive-pictures texlive-latex-extra
pip3 install neovim-remote
```

#### Lazygit
https://github.com/jesseduffield/lazygit

#### Obsidian
- Create workspace structure as stated in config.

#### LaTeX support support on Windows:
1. install Perl (https://strawberryperl.com/)
    - (?) also used for fuzzy finding through workspace?
2. install MikTex (https://miktex.org/)
    - install latexmk package (compiler)
3. install SumatraPDF (MS Store)
    - Inverse search: cmd /c start /min "" nvim --headless -c "VimtexInverseSearch %l '%f'" 
