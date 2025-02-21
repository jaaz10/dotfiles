#!/bin/bash

# Create a new file called install.sh in your dotfiles directory
# Make sure to chmod +x install.sh to make it executable

echo "Setting up your development environment..."

# Create symbolic links
echo "Creating symlinks..."
ln -sf "$PWD/zsh/.zshrc" "$HOME/.zshrc"

# Install packages (for Arch/Manjaro using pacman)
echo "Installing required packages..."
sudo pacman -S --needed \
    zsh \
    zsh-theme-powerlevel10k \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    fzf \
    bat \
    eza \
    thefuck \
    zoxide \
    fd \
    pokemon-colorscripts

# Install yay if not installed (for AUR packages)
if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

# Install NVM (Node Version Manager)
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Create necessary directories and files
echo "Creating additional configurations..."
mkdir -p "$HOME/.config/fzf"
touch "$HOME/.zsh_local"
touch "$HOME/.zsh_secrets"

# Copy FZF git configuration
echo "Setting up FZF git integration..."
curl -o "$HOME/.config/fzf/fzf-git.sh" https://raw.githubusercontent.com/junegunn/fzf-git.sh/main/fzf-git.sh

# Set ZSH as default shell
echo "Setting ZSH as default shell..."
chsh -s $(which zsh)

echo "Installation complete! Please restart your terminal."
echo "Don't forget to:"
echo "1. Run 'p10k configure' to setup your Powerlevel10k theme"
echo "2. Add your personal aliases to ~/.zsh_local"
echo "3. Add your secrets to ~/.zsh_secrets"
