# NixOS Mate WSL

## Main Banner
Your customizable Linux environment in Windows Subsystem for Linux (WSL) - powered by NixOS and Mate Desktop.

---

## Features
- Lightweight and customizable Mate Desktop Environment.
- Leverages the power of Nix, a reproducible and declarative package manager.
- Optimized for running on WSL 2, ensuring superior performance.
- Pre-configured for seamless user experience.
- Supports various productivity and development tools.

---

## Prerequisites
1. **Windows Subsystem for Linux (WSL 2)**: Ensure you have WSL 2 installed and enabled on your Windows 10 or 11 setup.
   - [WSL Setup Documentation](https://docs.microsoft.com/en-us/windows/wsl/install)
2. **Enable Virtual Machine Platform**: Required for WSL 2 performance.
   - Follow the guide in the above WSL documentation to enable this feature.
3. **Disk Space**: At least 10GB of free space to accommodate the NixOS environment and additional software.
4. **Administrator Privileges**: Needed for certain installation steps.

---

## Installation and Setup
1. **Install or Update WSL**:
   - Open PowerShell as Administrator and execute:
     ```powershell
     wsl --install
     ```
   - Update to WSL 2 if required:
     ```powershell
     wsl --set-default-version 2
     ```
2. **Download the Repository**:
   - Clone this repository:
     ```bash
     git clone https://github.com/vinberg88/nixos-mate-wsl.git
     ```

3. **Set Up NixOS**:
   - Navigate into the cloned repository:
     ```bash
     cd nixos-mate-wsl
     ```
   - Run the environment setup script:
     ```bash
     ./setup.sh
     ```
4. **Access the Mate Desktop**:
   - Launch Mate via an X server (e.g., **VcXsrv** or **X410**) on your Windows machine.

---

Start enjoying the power and simplicity of NixOS Mate on WSL! For troubleshooting and additional help, refer to the [wiki](https://github.com/vinberg88/nixos-mate-wsl/wiki).
