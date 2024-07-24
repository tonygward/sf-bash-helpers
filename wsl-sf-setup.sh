# update Linux
sudo apt update
sudo apt upgrade -y
sudo apt install wget ca-certificates

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# install node
nvm install --lts

# install sf cli
npm install -g @salesforce/cli
npm update -g @salesforce/cli

# Configure Chrome on Windows for Salesforce CLI
sudo apt-get install xdg-utils -y

# Install Chrome on Windows
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb -y
cd ~/

# Java Jdk 21
sudo apt install openjdk-21-jdk -y
# Salesforce Extension Folder: /usr/lib/jvm/java-21-openjdk-amd64/