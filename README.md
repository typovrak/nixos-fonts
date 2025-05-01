# 🗿 NixOS Fonts

> Install emoji and JetBrainsMono nerd font system-wide on NixOS for full terminal glyph coverage.

## 📦 Features

- 🎭 **Emoji support**: Installs ```noto-fonts-emoji``` so all standard emojis render correctly.

- 🗿 **Nerd font :** Provides JetBrainsMono patched with Nerd Font glyphs for extended icon & symbol coverage.

- ⚙️ **Fontconfig integration :** Enables ```fontconfig``` and default font packages for seamless system-wide use.

- 🔄 **Idempotent :** Safe to include in every rebuild, always enforces the same font set.

- ⚡ **Terminal-ready :** Ensures Neovim, terminals, and GUI apps have full access to emoji and glyphs.

- 💾 **Backup :** No backup needed for this module.

## ⚙️ Prerequisites

### 1. NixOS version
Requires NixOS 24.11 or newer.

### 2. User validation
the target user must be defined in ```config.username```. See [typovrak main nixos configuration](https://github.com/typovrak/nixos) for more details.

### 3. Backup
No backup needed for this module.

## 🚀 Installation
Fetch the module directly in your main nixos configuration at ```/etc/nixos/configuration.nix``` using fetchGit
```nix
# /etc/nixos/configuration.nix

let
  nixos-fonts = fetchGit {
    url = "https://github.com/typovrak/nixos-fonts.git";
    ref = "main";
    rev = "e6b92fa59d87783c2bfc9d2ccd4acb3c025cda6a"; # update to the desired commit
  };
in
{
  imports = [
    /etc/nixos/hardware-configuration.nix # system hardware settings
    /etc/nixos/variables.nix # defines config.username and other variables, see https://github.com/typovrak/nixos for more details
    (import "${nixos-fonts}/configuration.nix")
  ];
}
```

Once imported, rebuild your system to apply changes
```bash
sudo nixos-rebuild switch
```

## 🎬 Usage

Use the JetBrainsMono Nerd Font everywher !
```bash
fc-list | grep JetBrainsMono
```

In case you didn't see results in the last command, rebuild the cache with
```bash
fc-cache -fv
```

## ❤️ Support

If this module saved you time, please ⭐️ the repo and share feedback.  
You can also support me on ☕ [Buy me a coffee](https://www.buymeacoffee.com/typovrak).

## 📝 License

Distributed under the [MIT license](LICENSE.md).

## 📜 Code of conduct

This project maintains a [code of conduct](.github/CODE_OF_CONDUCT.md) to ensure a respectful, inclusive and constructive community.

## 🛡️ Security

To report vulnerabilities or learn about supported versions and response timelines, please see our [security policy](.github/SECURITY.md).

---

<p align="center"><i>Made with 💜 by typovrak</i></p>
