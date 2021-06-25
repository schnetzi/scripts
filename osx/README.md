# Mac OS X

## Prerequisites

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## ZSH

```sh
brew install zsh
chsh -s /usr/local/bin/zsh
```

## ohmyzsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## GitHub

```sh
ssh-keygen -t rsa -b 4096 -C "schnetzi@users.noreply.github.com"
pbcopy < ~/.ssh/id_rsa.pub
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
```

Add ssh-key to SSH-Keys on GitHub-website.

## Setup git

Copy `.gitconfig` from [dotfiles](https://github.com/schnetzi/dotfiles) or configure it yourself like that.

```sh
git config --global user.email "schnetzi@users.noreply.github.com"
git config --global user.name "schnetzi"
```

## nvm

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

Add the following to `.zshrc`

```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

To install the latest version run this

```sh
nvm install node
```

## phpbrew

### Preparation
Prepare for installation

```sh
xcode-select --install
```

Basic PHP system dependencies
```sh
brew install \
    autoconf \
    bzip2 \
    curl \
    freetype2 \
    jpeg \
    libiconv \
    libpng \
    libxml2 \
    mhash \
    mcrypt \
    pcre \
    postgresql \
    redis \
    zlib
```

### Installation
See [installation instructions](https://github.com/phpbrew/phpbrew#installation) of phpbrew

### php

Install php via phpbrew
```sh
phpbrew install 7 \
    +default \
    +intl=shared,$(brew --prefix icu4c) \
    +mysql \
    +pgsql \
    +sqlite \
    +cgi
    +fpm
    +openssl="$(brew --prefix openssl)" \
    +bz2="$(brew --prefix bzip2)" \
    +curl="$(brew --prefix curl)" \
    +iconv="$(brew --prefix libiconv)" \
    +zlib="$(brew --prefix zlib)"
```

Install missing extensions
```
phpbrew ext install libsodium
phpbrew ext install zlib
phpbrew ext install xdebug
```

Check for php -v if libsodium could be installed correctly.  
Trick was to copy the sodium.so to libsodium.so

### XDebug

A good configuration reference for Xdebug is:

```
# ~/.phpbrew/php/php-<version>/var/db/xdebug.ini
zend_extension=xdebug.so

xdebug.mode=debug
xdebug.remote_enable=1
xdebug.remote_autostart=1
xdebug.start_with_request=yes

xdebug.max_nesting_level=512
```

## composer

```sh
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
mv composer.phar /usr/local/bin/composer
php -r "unlink('composer-setup.php');"
```

Add the following to your `.zshrc`:

```
# Add composer to your path variable
export PATH="~/.composer/vendor/bin:$PATH"
```

## Laravel valet

```sh
composer global require laravel/valet
valet install
```

## MySQL

```sh
brew install mysql
brew services start mysql
mysql_secure_installation
```

To login type the following and then enter your password.

```sh
mysql -u root -p
```

To make the login available for Larave run the following MySQL command

```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
```
