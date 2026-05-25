# nix/modules/home-manager.nix — auto-generated from bevy_diagnostic.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_diagnostic; in {
  options.programs.bevy_diagnostic = {
    enable = lib.mkEnableOption "bevy_diagnostic";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_diagnostic or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
