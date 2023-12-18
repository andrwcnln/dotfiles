if status is-interactive
    set -U fish_greeting "🐟"

    set -gx VISUAL nvim
    set -gx EDITOR $VISUAL

    fish_add_path /usr/local/go/bin
    fish_add_path ~/go/bin
    fish_add_path ~/.zig

    alias lg "lazygit"
end
rvm default

#function fish_prompt
#    powerline-shell --shell bare $status
#end
