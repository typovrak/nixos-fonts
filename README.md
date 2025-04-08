# nixos-fonts

nixos-fonts = fetchGit {
	url = "https://github.com/typovrak/nixos-fonts.git";
	ref = "main";
};

(import "${nixos-fonts}/configuration.nix")
