# Mate - NIXOS - WSL - How to install Mate via Nixos - EASY!

This repository provides a setup for running MATE Desktop on NixOS inside Windows Subsystem for Linux (WSL).
Its easy to install just follow instructions. NixOS + flakes.

## What is MATE Desktop?

MATE Desktop is a lightweight and fast desktop environment that continues the GNOME 2 legacy.
It offers a classic, intuitive, and feature-rich interface that is easy to use for both beginners
and advanced users. With a focus on stability, compatibility, and long-term support, MATE Desktop is
a reliable choice for various use cases—from personal setups to professional environments.

Key characteristics of MATE Desktop:

- **Lightweight:** Consumes fewer system resources compared to other desktop environments, making it ideal for older or resource-constrained machines.
- **Customizable:** Offers a variety of configuration options, panel layouts, and additional applets.
- **Familiarity:** Designed as a continuation of GNOME 2, MATE Desktop provides a familiar experience for those who appreciated GNOME 2's functionality and design.
- **Support for Modern Systems:** Despite its lightweight nature, it includes support for modern hardware and technologies.

Learn more about MATE Desktop at [mate-desktop.org](https://mate-desktop.org).

## What is NixOS?

NixOS is a Linux distribution built on the Nix package manager, designed to offer reliable
and reproducible system configurations. Its declarative approach lets you describe your
system configuration in a single file, ensuring consistent environments across different machines.

Learn more about NIXOS at [nixos.org](https://nixos.org).

![Main Banner](https://github.com/user-attachments/assets/b61b00e3-1508-47ed-b87b-3c8c113314ac)


---

## Features ✨

- ![Feature Icon](https://via.placeholder.com/40.png?text=✔️) **Lightweight and Efficient**: Enjoy the robustness of NixOS within Windows.
- ![Feature Icon](https://via.placeholder.com/40.png?text=📦) **Customizable Packages**: Tailor your environment to your needs.
- ![Feature Icon](https://via.placeholder.com/40.png?text=⚡) **Fast and Reliable**: Accelerated setup for development activities.

---

## Prerequisites 📋

Before you begin, ensure you have the following:

- ![Prerequisite Icon](https://via.placeholder.com/20.png?text=💻) A system with Windows 10/11 and WSL enabled.
- ![Prerequisite Icon](https://via.placeholder.com/20.png?text=🌐) Internet connectivity for downloading packages.
- ![Prerequisite Icon](https://via.placeholder.com/20.png?text=🔧) Basic command-line proficiency.

---

## Installation and Setup 🛠️

Follow these steps to get started:

1. ✅ **Enable and Configure WSL**:
   ```bash
   wsl --install
   ```

2. ✅ **Clone the Repository**:
   ```bash
   git clone https://github.com/vinberg88/nixos-mate-wsl.git
   ```

3. ⚠️ **Switch to the Repository Directory**:
   ```bash
   cd nixos-mate-wsl
   ```

4. ✅ **Run the Installation Script**:
   ```bash
   ./install.sh
   ```

5. ✅ **Verify the Installation and Launch**:
   ```bash
   wsl --list --verbose
   ```

---

## Credits 👏

Developed and maintained by [vinberg88](https://github.com/vinberg88).

---

## License 📄

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

![Footer Banner](https://via.placeholder.com/728x20.png?text=Thank+You+for+Using+NixOS+Mate+on+WSL)
