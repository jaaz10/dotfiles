# My Dotfiles

This repository contains my personal dotfiles and configuration files for setting up my development environment on Arch/Manjaro Linux.

## Overview

These dotfiles are managed directly in their respective locations and synchronized with this repository. The setup includes configurations for:

ZSH shell with Powerlevel10k theme, custom command line tools and utilities, development environment preferences, and system configurations.

## Core Components

### Shell Setup
- ZSH as the default shell
- Powerlevel10k theme for a modern, informative prompt
- Custom aliases and functions for improved workflow
- Integration with various plugins and tools

### Command Line Tools
- fzf - Fuzzy finder with custom key bindings and git integration
- bat - A better cat with syntax highlighting
- eza - Modern replacement for ls
- thefuck - Command correction tool
- zoxide - Smarter directory navigation
- fd - User-friendly alternative to find

### Additional Features
- Pokemon color scripts for terminal fun
- Custom git configurations and aliases
- Local and secret configurations support (.zsh_local and .zsh_secrets)

## Installation

1. Clone this repository: git clone <your-github-repo-url> and cd into dotfiles
2. Make the setup script executable with chmod +x dotfiles-setup.sh
3. Run the setup script with ./dotfiles-setup.sh

## Post-Installation Steps

1. Configure Powerlevel10k by running p10k configure
2. Set up personal configurations:
   - Add personal aliases to ~/.zsh_local
   - Add sensitive information to ~/.zsh_secrets
3. Restart your terminal to apply all changes

## Structure

Main files and directories:
- .zshrc                  # Main ZSH configuration
- dotfiles-setup.sh       # Installation script
- .zsh_local             # Local machine-specific configurations (not tracked)
- .zsh_secrets           # Secret keys and sensitive data (not tracked)
- README.md              # This documentation

## Customization

Local machine-specific configurations should go in ~/.zsh_local
Sensitive information (API keys, tokens) should go in ~/.zsh_secrets
Both files are git-ignored and won't be pushed to the repository

## Contributing

These are my personal dotfiles, but if you have suggestions or improvements:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

Feel free to use and modify these dotfiles for your own use.

## Acknowledgments

Special thanks to the creators and maintainers of:
- Powerlevel10k
- FZF
- And all other tools and plugins used in this setup
