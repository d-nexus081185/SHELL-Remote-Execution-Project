# SHELL-Remote-Installation-Project

Welcome to the SHELL Remote Installation Project! This repository provides a shell script that facilitates the installation of essential system resources on remote servers. With this project, you can easily install the Apache web server, `wget`, and `unzip` on Amazon Linux and Ubuntu Linux systems from a master Ubuntu server.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features
-**Setup server requirements on the AWS console platform or whatever server platforms available.
- **Cross-Platform Support**: Installs Apache, `wget`, and `unzip` on both Amazon Linux and Ubuntu Linux.
- **Centralized Control**: Manage installations from a master Ubuntu server.
- **Simplicity**: Easy-to-use shell script for straightforward installations.
- **Logging**: Provides logs of installation progress and errors.

## Prerequisites

- **Master Server**: Ubuntu Linux.
- **Remote Servers**: Amazon Linux or Ubuntu Linux.
- **SSH Access**: Ensure you have SSH access to the remote servers with the necessary privileges.
- **SCP/SFTP**: Required for transferring scripts and files between the master and remote servers.
-**Create a Linux User and add to sudoers group

## Getting Started

To get started with the SHELL Remote Installation Project, follow these steps:

1. **Clone the Repository**:

    ```bash
    git clone https://github.com/d-nexus081185/SHELL-Remote-Execution-Project.git
    ```

2. **Navigate to the Project Directory**:

    ```bash
    cd SHELL-Remote-Execution-Project
    ```

3. **Transfer the Scripts to Master Server**:

    Copy the `multios_config.sh`, `test_con.sh` and `remote_deploy.sh` scripts to your master Ubuntu server.

## Usage
** This is require setting up Passwordless Authentication to allow access from the Master server to the webservers of differnet OS platforms
1. **Make the scrips executable `chmod +x multios_config.sh` and chmod +x remote_deploy.sh`
       Run the Installation Script**:

    Execute the script on your master Ubuntu server to install resources on the remote servers:

    ```bash
    ./remote_deploy.sh --hosts remote_host1,remote_host2 --user your_username
    ```

    - `--hosts` : Comma-separated list of remote server IPs or hostnames.
    - `--user` : Username for SSH access to remote servers.

2. **Script Execution Details**:

    The script will:
    - Detect the remote server's OS (Amazon Linux or Ubuntu).
    - Install Apache web server, `wget`, and `unzip` based on the OS.

3. **Check Logs**:

    Logs are stored in the `logs` directory. Review the logs for details about the installation process and any issues encountered.

## Configuration

The script uses environment variables for configuration:

- **SSH_KEY**: Path to the SSH private key used for authentication.
- **INSTALL_APACHE**: Set to `true` or `false` to control Apache installation.
- **INSTALL_WGET**: Set to `true` or `false` to control `wget` installation.
- **INSTALL_UNZIP**: Set to `true` or `false` to control `unzip` installation.

You can set these variables in the script or export them in your shell session.

## Contact

For questions or support, please contact:

- **Maintainer**: [Chukwuemeka Ezeobi](mailto:emeka_aws.devops@protonmail.com)
- **Project Repository**: [https://github.com/d-nexus081185/SHELL-Remote-Execution-Project.git]

