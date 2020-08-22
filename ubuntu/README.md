# Ubuntu

## Prerequisites

```sh
sudo apt-get update
sudo apt upgrade
```

## ZSH

```sh
sudo apt install -y zsh
sudo apt-get install -y powerline fonts-powerline
chsh -s $(which zsh)
```

logout and login

## ohmyzsh

```sh
sudo apt install -y git-all
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## vim

```sh
sudo apt remove -y vim-tiny
sudo apt update
sudo apt install -y vim
```

## GitHub

```sh
ssh-keygen -t rsa -b 4096 -C "schnetzi@users.noreply.github.com"
cat ~/.ssh/id_rsa.pub
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
```

Add ssh-key to SSH-Keys on GitHub-website.

## Setup git

Copy `.gitconfig` from dotfiles or configure it yourself like that.

```sh
git config --global user.email "schnetzi@users.noreply.github.com"
git config --global user.name "schnetzi"
```

## nvm

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

Add the following to .zshrc

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

To install the latest version run this

```sh
nvm install node
```

## php

```sh
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.3 libapache2-mod-php7.3 mcrypt php7.3-mysql php7.3-mbstring php7.3-gettext php7.3-xml php7.3-json php7.3-curl php7.3-zip php7.3-common
```

## composer

### Prerequisites

```sh
sudo apt install -y curl php-cli php-mbstring git unzip
```

### Download and install

```sh
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
```

## mySQL

```sh
sudo apt install -y mysql-server
sudo mysql_secure_installation
```

Set password for db root user and follow the steps.

```sh
sudo mysql
```

```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
FLUSH PRIVILEGES;
exit
```

### Laravel

Make Laravel compatible with mysql 8

```sql
ALTER USER 'localivery'@'localhost' IDENTIFIED WITH mysql_native_password BY 'localivery';
```

Localivery

```sql
CREATE USER 'localivery'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'localivery'@'localhost' WITH GRANT OPTION;
```
