# My Wezterm Configuration

This repository contains my personal Wezterm configuration. It's tailored for a visually appealing and efficient workflow, featuring a custom color scheme, a background image, and intuitive keybindings for pane management.

## Features

- **Custom Appearance**:
  - **Fonts**: Uses `JetBrains Mono` with `FiraCode Nerd Font` as a fallback.
  - **Color Scheme**: A custom dark theme with a specific tab bar style for active and inactive tabs.
  - **Background Image**: Configured to use a background image with adjusted brightness for better text contrast.
  - **Frameless Window**: Window decorations are minimal (`RESIZE`) for a clean look.

- **Productivity Enhancements**:
  - **Default Directory**: Wezterm starts in the `C:\Users\ADMIN\Desktop` directory.
  - **Sensible Defaults**: Initial window size is set to 120 columns and 28 rows.

- **Custom Keybindings**: Vim-like keybindings for pane navigation and management, using the `ALT` key as the primary modifier.

## Installation

1.  **Install Wezterm**: If you haven't already, download and install Wezterm from the [official website](https://wezfurlong.org/wezterm/installation.html).

2.  **Install Fonts**: Make sure you have the following fonts installed:
    - [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
    - [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)

3.  **Copy Configuration**: Place the `.wezterm.lua` file in your Wezterm configuration directory.
    - On Windows, this is typically `C:\Users\YourUsername\.wezterm.lua`.
    - On Linux/macOS, this is `~/.wezterm.lua`.

4.  **Update Image Path**: The configuration uses a hardcoded path for the background image. You **must** update this path to an image on your own system.
    Find this line in `.wezterm.lua` and change the path:

    ```lua
    config.window_background_image = "C:\\Users\\ADMIN\\Desktop\\ChatGPT-anime.png" -- Change this!
    ```

5.  **Reload Configuration**: Once the file is in place, you can reload the configuration in Wezterm by pressing `CTRL+SHIFT+r`.

## Keybindings

The following custom keybindings are configured:

| Keybinding         | Action                              |
| ------------------ | ----------------------------------- |
| `ALT + Enter`      | Split pane horizontally             |
| `ALT + \`          | Split pane vertically               |
| `ALT + h`          | Activate pane to the left           |
| `ALT + l`          | Activate pane to the right          |
| `ALT + k`          | Activate pane above                 |
| `ALT + j`          | Activate pane below                 |
| `ALT + w`          | Close the current pane              |
| `CTRL + SHIFT + r` | Reload the Wezterm configuration    |
| `CTRL + SHIFT + q` | Quit Wezterm                        |
| `CTRL + SHIFT + C` | Copy selected text to the clipboard |
| `CTRL + SHIFT + V` | Paste text from the clipboard       |
