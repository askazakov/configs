if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx TERM xterm-256color
set --global --export XDG_CONFIG_HOME $HOME/.config
