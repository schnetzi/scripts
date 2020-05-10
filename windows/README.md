## Installation

### PHP in wsl
```sh
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.3 libapache2-mod-php7.3 mcrypt php7.3-mysql php7.3-mbstring php7.3-gettext php7.3-xml php7.3-json php7.3-curl php7.3-zip
```

### composer in wsl
```sh
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
```

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