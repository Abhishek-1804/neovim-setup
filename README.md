## Installation

1. Install Neovim using Homebrew:
    ```sh
    brew install neovim
    ```

2. Change ownership of the Neovim configuration directory (optional):
    ```sh
    sudo chown -R $(whoami) ~/.config/nvim
    ```

3. Create the Neovim configuration directory and initial setup files:
    ```sh
    mkdir -p ~/.config/nvim
    touch ~/.config/nvim/init.lua
    
    mkdir -p ~/.config/nvim/lua
    touch ~/.config/nvim/lua/settings.lua
    touch ~/.config/nvim/lua/plugins.lua
    touch ~/.config/nvim/lua/keymaps.lua
    
    mkdir ~/.config/nvim/lua/config
    ```
    Note: The `config` directory will contain all plugin configurations and plugin keymaps.

4. Set up the plugin manager (Packer.nvim):
    ```sh
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

5. Fill in the `init.lua` and other Lua files (`settings.lua`, `plugins.lua`, `keymaps.lua`, and files in `lua/config`) with your configuration.

6. Use `:Packer` commands within Neovim to manage plugins. For example, run `:PackerInstall` to install plugins or `:PackerSync` to update them.

## Usage

After setting up, you can start Neovim and begin customizing your configuration files to match your preferences. Be sure to check the documentation for each plugin you install for specific configuration options.

