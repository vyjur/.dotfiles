#!/bin/bash

"Fixing Git"
export PATH="/c/Program Files/Git/mingw64/bin:$PATH"
# Create a symbolic link for Neovim configuration
echo "Creating symbolic link for Neovim configuration..."
sudo ln -s ~/.config/nvim /c/Users/driti/AppData/Local/nvim

# Create the Alacritty configuration directory if it doesn't exist
echo "Creating Alacritty configuration directory..."
sudo mkdir -p /c/Users/driti/AppData/Roaming/alacritty/

# Move the Alacritty configuration file to the appropriate directory
echo "Moving Alacritty configuration file..."
sudo mv ~/.config/alacritty.toml /c/Users/driti/AppData/Roaming/alacritty/

echo "Setup complete."
