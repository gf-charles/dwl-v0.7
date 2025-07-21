{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    libglvnd
    libinput
    pixman
    wayland
    wayland-protocols
    libdrm
    libevdev
    libxkbcommon
    libudev-zero
    libcap
    wlroots
    fcft
    gdb
  ];

  nativeBuildInputs = with pkgs; [
    pkg-config
    wayland-scanner
  ];

  shellHook = ''
    export SHELL=${pkgs.zsh}/bin/zsh
    echo "Ready to compile dwl. "
  '';
}

