# Issabel 4 Netinstall Automation

Fully automated Issabel 4 netinstall script for CentOS 7. No prompts — answers hardcoded (Asterisk 11, passwords: admin/admin).

## Usage

```bash
curl -sL https://raw.githubusercontent.com/Ahmed-Emad02/issabel4-netinstall-auto/main/issabel4-netinstall-auto.sh | sudo bash
```

## What it does

- Installs all Issabel 4 dependencies and packages via yum
- Selects Asterisk 11
- Enables default additional packages (licensed modules + blocklist)
- Disables SELinux and firewalld
- Sets MariaDB root password to admin
- Sets Issabel web admin password to admin
- Reboots when complete

## Credentials

| Service | Username | Password |
|---------|----------|----------|
| Issabel Web UI | admin | admin |
| MariaDB root | root | admin |

## Clean install

Run on a minimal CentOS 7 installation with network access. The script handles everything.