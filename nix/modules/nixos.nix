# nix/modules/nixos.nix — auto-generated from bevy_diagnostic.caixa.lisp
# description: "Provides diagnostic functionality for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_diagnostic;
in {
  options.services.bevy_diagnostic = {
    enable = lib.mkEnableOption "bevy_diagnostic";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_diagnostic or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
