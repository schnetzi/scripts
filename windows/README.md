# Windows

## Installation

### Install WSL

Turn on Windows Feature "Windows Subsystem for Linux" via Admin-PowerShell

```sh
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

Enable Virtual machine via Admin-PowerShell

```sh
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```

Enable WSL 2

```sh
wsl.exe --set-default-version 2
```

#### Install Ubuntu-WSL

- Open Windows Store
- Search Ubuntu
- Install Ubuntu 20.04 LTS

### Install git

```sh
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

### Install PHP in WSL

```sh
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.3 libapache2-mod-php7.3 mcrypt php7.3-mysql php7.3-mbstring php7.3-gettext php7.3-xml php7.3-json php7.3-curl php7.3-zip
```

#### Add certificate to php.ini

- Find location of php

```sh
php --ini
```

- Add the `cacert.pem`-file to the folder
- Right click on the file and see if security blocks file
- Allow / unblock file
- Change the following line in the `php.ini`-file

```ini
curl.cainfo = C:\php\cacert.pem
```

### Install composer in WSL

```sh
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
```

### Install zsh

See guide in [ubuntu-README.md](../ubuntu/README.md#zsh)

Clone the repository for the fonts with wsl

```sh
git clone https://github.com/powerline/fonts.git
```

Open PowerShell and execute the installer in the fonts folder.

```
.\install.ps1
```

When getting errors for script execution look [here for Restriction Cause](#powershell-restriction).

Afterwards you can set the value back running the following:

```sh
Set-ExecutionPolicy Restricted
```

To get the font working properly follow these steps:

- Open WSL
- Right click at the top menu bar and choose settings
- Go to font
- Select "DejaVu Sans Mono for Powerline"

### Install Node

Preparation

```sh
sudo apt-get install -y \
  apt-transport-https \
  lsb-release \
  ca-certificates \
  build-essential \
  curl wget unzip zip tmux git
```

Install node in windows from [Node.js Website](https://nodejs.org/en/download/).

```sh
sudo apt-get install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install node
```

Check if installation worked

```sh
node --version
npm --version
```

[Docs on microsoft](https://docs.microsoft.com/en-us/windows/nodejs/setup-on-wsl2)

## Setup GitHub

Connect shell to github. See [ubuntu-README.md](../ubuntu/README.md#github).

## Setup git settings

### Windows folder location

#### <a name="powershell-restriction"></a>PowerShell Restriction

PowerShell restricts scripts by default. To disable that (not recommended but needed to work) run the following in admin-PowerShell

```sh
Set-ExecutionPolicy Unrestricted
```

Copy the file `Microsoft.PowerShell_profile.ps1` into the following folder.

```
C:\Users\[Username]\Documents\WindowsPowerShell
```

or

```
C:\Dokumente und Einstellungen\[Username]\Eigene Dateien\WindowsPowerShell
```

##
