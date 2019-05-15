---
id: Ubuntu
title: Ubuntu Linux Distro, a widely used desktop/server environment linux platform.
sidebar_label: Ubuntu
---

## Ubuntu Admin

### Install, Update, Upgrade

#### Upgrade

-`sudo do-release-upgrade -d`

### User and Privilege

#### run sudo command without a password

- `sudo visudo`
- `USER_NAME ALL=(ALL:ALL) NOPASSWD:ALL`
  - The USER can execute from ALL terminals/hosts, acting as ALL (any) users, ALL(any) groups, and run ALL (any) command

---

## Bash Scripting

---

## Linux Technologies

### SSH

#### SSH Client

- Config

  - /etc/ssh/ssh_config
    - `ForwardAgent yes`
    - `ForwardX11 yes`
  - ~/.ssh/
    - `mkdir -p ~/.ssh && chmod 700 ~/.ssh`
  - ~/.ssh/config

    - `touch ~/.ssh/config && chmod 600 ~/.ssh/config`
    - config file template:

      ```bash
      #Server1 Config
      Host SERVER
          HostName SERVER_IP
          User SERVER_USER
          Port Server_PORT
          IdentityFile ID_FILE
      ```

    - [Ref](https://www.cyberciti.biz/faq/create-ssh-config-file-on-linux-unix/)

- Private Key
  - `cd ~/.ssh/; cp KEY_FILE .`
  - `chmod 400 KEY_FILE`
- Public Key

#### SSH Server

- Config

---

## Misc

### Online Resources

- [Ubuntu Docs](https://help.ubuntu.com/)
