{ config, pkgs, lib, ... }:

{
  ############################################################
  # WSL
  ############################################################
  wsl.enable = true;
  wsl.startMenuLaunchers = false;

  ############################################################
  # System
  ############################################################
  networking.hostName = "nixos-wsl-mate";
  time.timeZone = "Europe/Stockholm";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  ############################################################
  # User
  ############################################################
  users.users.nixos = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "video" "networkmanager" ];
    initialPassword = "changeme";
  };

  security.sudo.wheelNeedsPassword = true;

  ############################################################
  # X11 (no display manager – WSL safe)
  ############################################################
  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;
  services.xserver.xkb.layout = "se";

  ############################################################
  # MATE Desktop
  ############################################################
  services.xserver.desktopManager.mate.enable = true;

  ############################################################
  # Desktop infrastructure (required)
  ############################################################
  services.dbus.enable = true;
  security.polkit.enable = true;
  programs.dconf.enable = true;

  ############################################################
  # Audio
  ############################################################
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  ############################################################
  # X410 environment
  ############################################################
  environment.sessionVariables = {
    DISPLAY = "localhost:0";
    XDG_SESSION_TYPE = "x11";
    GDK_BACKEND = "x11";
    QT_QPA_PLATFORM = "xcb";
    LIBGL_ALWAYS_INDIRECT = "1";
  };

  ############################################################
  # Packages – FULL MATE STACK
  ############################################################
  environment.systemPackages = with pkgs; [

    # Core MATE
    mate.mate-session-manager
    mate.mate-panel
    mate.mate-settings-daemon
    mate.mate-control-center
    mate.mate-desktop
    mate.mate-menus
    mate.mate-applets
    mate.mate-terminal
    mate.mate-system-monitor
    mate.mate-utils
    mate.mate-tweak

    # Files / editors / viewers
    mate.caja
    mate.caja-extensions
    mate.pluma
    mate.atril
    mate.eom

    # Window manager & compositor
    marco
    picom

    # Network
    networkmanagerapplet

    # Audio / UI tools
    pavucontrol
    lxappearance
    dconf-editor

    # X tools
    xorg.xauth
    xorg.xrandr
    xorg.xrdb
    xorg.xsetroot

    # Themes & fonts
    arc-theme
    papirus-icon-theme
    noto-fonts
    noto-fonts-emoji
    dejavu_fonts

    # Utils
    xdg-utils
  ];

  networking.networkmanager.enable = true;

  ############################################################
  # WSL safety
  ############################################################
  systemd.targets.sleep.enable = false;
  systemd.targets.suspend.enable = false;
  systemd.targets.hibernate.enable = false;
  systemd.targets.hybrid-sleep.enable = false;

  ############################################################
  system.stateVersion = "25.05";
}
