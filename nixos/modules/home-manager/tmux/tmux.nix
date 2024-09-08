{ pkgs, lib, config, ... }:

{
  config = {
    home.packages = [
      pkgs.tmux
    ];
    programs.tmux = {
      enable = true;
      prefix = "C-Space";
      terminal = "xterm-256color";
      escapeTime = 0;
      baseIndex = 1;
      mouse = true;
      extraConfig = ''
        set-option -g status-interval 5
        set-option -g automatic-rename on
        set-option -g automatic-rename-format '#{b:pane_current_path}'

        # Transparent Background
        set -g status-style "bg=default"
        set -g status-bg default

        # Vim style pane selection
        bind h select-pane -L
        bind j select-pane -D 
        bind k select-pane -U
        bind l select-pane -R

        # Alt vim keys to switch windows
        bind -n M-h previous-window
        bind -n M-l next-window

        # Tmux at the top
        set -g status-position top

        # set vi-mode
        set-window-option -g mode-keys vi

        # keybindings
        bind-key -T copy-mode-vi v send-keys -X begin-selection
        bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
        bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

        bind v split-window -h -c "#{pane_current_path}"
        bind h split-window -v -c "#{pane_current_path}"
      '';
    };
    # plugins = [ ];
  };
}