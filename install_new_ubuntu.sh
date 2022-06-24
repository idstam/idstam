#! /bin/sh

read -p "Enter fullname: " fullname
read -p "Enter email: " email

sudo apt update && sudo apt upgrade -y
sudo apt install curl -y
sudo apt install build-essential -y
sudo curl -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list 
sudo apt update
sudo apt install -y syncthing filezilla p7zip-full
sudo apt install -y mc htop wget screen vim tilix git keepassx 
sudo apt install -y php php-curl php-intl php-mysql php-mbstring php-xml
sudo apt install -y virtualbox virtualbox-ext-pack
sudo apt install -y nmap

sudo apt autoremove -y

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

git config --global user.email "$email"
git config --global user.name "$fullname"


echo https://dbeaver.io
echo https://code.visualstudio.com/
echo https://go.dev/doc/install
echo https://github.com/magicmonty/bash-git-prompt

