#!/bin/bash
# though this was from a BRAVE AI query - most of it and majority of credit goes to this guy: https://gist.github.com/lamngockhuong/d6b4b036265a6c1a8daa9ff57d0e28ba

# Function to print a section header
section() {
    echo
    echo "🔹 $1"
}

# Begin script
echo "🔄 Starting update for Pacman and Flatpak..."

# === Pacman ===
if command -v pacman &> /dev/null; then
    section "==========================================================="
    section "Updating Pacman packages..."
    section "==========================================================="
    sudo pacman -Syu --noconfirm
else
    echo "⚠️ Pacman is not available on this system."
fi

# === Pacman ===
if command -v yay &> /dev/null; then
    section "==========================================================="
    section "Updating Yay packages..."
    section "==========================================================="
    sudo yay -Syu --noconfirm
else
    echo "⚠️ Yay is not available on this system."
fi

# === Flatpak ===
if command -v flatpak &> /dev/null; then
    section "==========================================================="
    section "Updating Flatpak packages..."
    section "==========================================================="
    flatpak update -y
else
    echo "⚠️ Flatpak is not available on this system."
fi

echo
echo "✅ All available package managers (Pacman and Flatpak) have been updated successfully!"

echo "System will reboot now to ensure everything is fresh :)"
for i in {10..1}; do echo -n "Shutting down in $i... "; sleep 1; echo -ne "\r"; done;

shutdown
