# --- Update System ---
sudo apt update && sudo apt ugprade


# --- Pre Installation Setup ---
mkdir ~/development
touch ~/development/pat.txt

# --- flatpak ---
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo


# --- commandline utilities ---
sudo apt install -y kitty fish htop tree neovim

sudo snap install helix
# --- LazyVim ---
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# Remove the `.git` folder, so you can add it to your own repo later
git clone https://github.com/LazyVim/starter ~/.config/nvim
# rm -rf ~/.config/nvim/.git
rm -rf ~/.config/nvim/.git


# --- Development ---
sudo apt-get install build-essential
sudo apt install -y rustup 
sudo snap install go --classic
sudo snap install zig --edge --classic

# --- Gnome ---
sudo apt install -y gnome-tweaks
flatpak install flathub com.mattjakeman.ExtensionManager


# --- GUI snaps ---
# office
sudo snap install thunderbird
sudo snap install obsidian --classic
sudo snap install onlyoffice-desktopeditors
sudo snap install drawio
# Development
sudo snap install clion --classic
sudo snap install goland --classic
# design
sudo snap install gimp
sudo snap install blender --classic
# Communication
sudo snap install discord
sudo snap install teams-for-linux
sudo snap install skype
# gaming
sudo snap install steam
sudo snap install obs-studio
# Other
sudo snap install spotify
sudo snap install brave

# --- flatpaks ---
flatpak install -y flathub me.timschneeberger.jdsp4linux # JamesDSP
flatpak install flathub net.davidotek.pupgui2 # protonup
flatpak install -y flathub io.github.shiftey.Desktop
flatpak install -y flathub me.proton.Mail
flatpak install -y flathub com.github.Matoking.protontricks
flatpak install -y flathub com.usebottles.bottles # bottles for gamma emulation


# --- Post Installation ---
chsh -s /usr/bin/fish "$USER"
