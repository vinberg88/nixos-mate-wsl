# NixOS + MATE Desktop on WSL

This repository provides configuration and scripts to set up **NixOS** with the **MATE Desktop Environment** on **Windows Subsystem for Linux (WSL)**. The setup is designed for simplicity, reproducibility, and ease of use.

---

## Features
- **NixOS** package management and reproducible environment.
- **MATE Desktop Environment** for a lightweight and user-friendly desktop experience within WSL.
- Shell scripts to automate installation and setup.

---

## Prerequisites

Before proceeding, ensure the following:
1. **Windows 10** or **Windows 11** with WSL2 enabled.
2. The WSL2 default distribution is installed (preferably Ubuntu).
3. Basic familiarity with using a terminal and administrative privileges.

---

## Installation Steps

Follow these steps for installation:

### Step 1: Clone this Repository
```bash
# Open your WSL terminal
git clone https://github.com/vinberg88/nixos-mate-wsl.git
cd nixos-mate-wsl
```

### Step 2: Run the Setup Script
```bash
# Make the installer executable
chmod +x install.sh

# Start the installation
./install.sh
```
The script will:
- Install necessary dependencies.
- Configure NixOS options.
- Setup the MATE Desktop within WSL.

### Step 3: Start WSL and MATE
Launch the MATE desktop environment using the following command:
```bash
mate-session
```

---

## Troubleshooting
If you encounter any issues, try the following:
- Ensure that WSL2 is properly configured.
- Update your WSL kernel with the latest version available in Windows settings.
- Reboot your system after installation.

---

## Contribution
Feel free to open issues and pull requests if you would like to contribute to this project!

---

## License
This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for more details.