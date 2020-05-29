# Windows

## Installation

### WSL
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

#### To install Ubuntu
* Open Windows Store
* Search Ubuntu
* Install Ubuntu 20.04 LTS


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

## GitHub

Connect shell to github. See [ubuntu-README.md](../ubuntu/README.md).

## Git

### Windows folder location

Copy the file `Microsoft.PowerShell_profile.ps1` into the following folder.

```
C:\Users\[Username]\Documents\WindowsPowerShell
```

or

```
C:\Dokumente und Einstellungen\[Username]\Eigene Dateien\WindowsPowerShell
```
