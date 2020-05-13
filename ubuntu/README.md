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
sudo apt-get install -y xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
```
Add ssh-key to SSH-Keys in GitHub