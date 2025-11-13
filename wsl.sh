sudo apt install curl gpg
source /etc/os-release
echo "deb http://download.opensuse.org/repositories/shells:/fish/Debian_$VERSION_ID/ /" | sudo tee /etc/apt/sources.list.d/fish.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish/Debian_$VERSION_ID/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish.gpg > /dev/null
sudo apt update 
sudo apt install fish
sudo apt update && sudo apt upgrade && sudo apt install wget tmux vim python3 gcc ranger git
sudo echo /bin/fish | sudo tee -a /etc/shells
chsh -s /bin/fish
