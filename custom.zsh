# editor
export VISUAL=nvim
export EDITOR=$VISUAL

# golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin

# zig
# export PATH=$PATH:~/.zig

# neovim
export PATH=$PATH:/usr/bin/nvim-linux64/bin

# picotool
export PATH=$PATH:~/picotool/build

# zig version manager
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

# rvm default

alias lg="lazygit"

lolcat -F 0.5 ~/.zshbanner

source /home/andrew/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
