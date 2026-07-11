{ config, pkgs, ... }:

let
	username = config.username;
	group = config.users.users.${username}.group or "users";
	home = config.users.users.${username}.home;
in {
	fonts = {
		enableDefaultPackages = true;
		fontconfig.enable = true;
		packages = with pkgs; [
			noto-fonts-emoji
			nerd-fonts.jetbrains-mono
		];
	};
}
