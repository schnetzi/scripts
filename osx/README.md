# Ubuntu

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
