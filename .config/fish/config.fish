# Start Wayland at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        #exec labwc
        #exec niri
        #exec startx
    end
end

if status is-interactive
    set -U fish_greeting
    fish_config theme choose solarized
end

fish_add_path -p $HOME/.local/bin/
fish_add_path -p $HOME/.cargo/bin

cat /etc/motd
