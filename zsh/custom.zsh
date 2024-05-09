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

# aliases
alias lg="lazygit"
alias nv="nvim"
alias nvd="neovide"
alias mc="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia minecraft-launcher"

lolcat -F 0.5 ~/.zshbanner

source /home/andrew/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
