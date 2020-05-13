# Ubuntu

## Prerequisites
sudo apt-get update
sudo apt upgrade


## ZSH
```sh
sudo apt install --assume-yes zsh
sudo apt-get install --assume-yes powerline fonts-powerline
chsh -s $(which zsh)
```
logout and login


## ohmyzsh
```sh
sudo apt install --assume-yes git-all
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## vim
```sh
sudo apt remove --assume-yes vim-tiny
sudo apt update
sudo apt install --assume-yes vim
```

## GitHub
```sh
ssh-keygen -t rsa -b 4096 -C "schnetzi@users.noreply.github.com"
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
```
Add ssh-key to SSH-Keys in GitHub