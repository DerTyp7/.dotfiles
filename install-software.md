# How to install software

There are **two main ways** to install software on CachyOS: using Arch Repositories or Flatpak.

- [How to install software](#how-to-install-software)
  - [What should I use?](#what-should-i-use)
  - [Arch Repositories](#arch-repositories)
    - [Installing packages](#installing-packages)
    - [Examples](#examples)
  - [Flatpak](#flatpak)
    - [Alternatively, you can install Flatpak packages using the terminal](#alternatively-you-can-install-flatpak-packages-using-the-terminal)

## What should I use?

Usually, it's best to use [**Arch Repositories**](#arch-repositories) for most software, as they are more integrated with the system and generally perform better.

However, if you need a specific version of software that is not available in the [**Arch Repositories**](#arch-repositories), **or** if you want to try out new software without affecting your system, you can use [**Flatpak**](#flatpak).

## Arch Repositories

Arch Software installs packages **integrated** with the system.

- These packages are usually more **lightweight** than Flatpak versions.
- They **integrate better** with the system theme and file manager.
- They start up faster and use less disk space.

### Installing packages

1. Find the package you want to install on by googling `<PACKAGE_NAME> arch repository` or searching on [archlinux.org/packages](https://archlinux.org/packages/) or [aur.archlinux.org](https://aur.archlinux.org/).
2. Open Terminal/Console.
3. Install the package using `pacman` or `paru` (for AUR packages).
   - If the package is on `https://archlinux.org/packages/`, use `pacman`.
   - If the package is on `https://aur.archlinux.org/`, use `paru`.

```bash
sudo pacman -S package_name
```

or

```bash
paru -S package_name
```

### Examples

**Discord** is available on AUR, so you would install it using `paru`:

> <https://archlinux.org/packages/extra/x86_64/discord/>

```bash
paru -S discord
```

**VLC** is available on the official Arch repositories, so you would install it using `pacman`:

> <https://archlinux.org/packages/extra/x86_64/vlc/>

```bash
sudo pacman -S vlc
```

## Flatpak

Flatpak Software installs packages in a **sandboxed** environment.

- They are more **secure** as they are isolated from the system.
- They can be **easily uninstalled** without affecting the host system.
- They may not integrate well with the system theme and file manager.
- They may start up slower and use more disk space.

1. Open Software Center.
2. Search for the application you want to install.
3. Click on the application and then click "Install".

### Alternatively, you can install Flatpak packages using the terminal

```bash
flatpak install package_name
```
