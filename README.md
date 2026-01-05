# eclipseOS

**eclipseOS** is a modern, feature-rich Linux distribution built on Arch Linux, featuring the Hyprland Wayland compositor and a comprehensive suite of tools for productivity, development, and customization.

## Overview

eclipseOS (based on [Omarchy](https://github.com/basecamp/omarchy/)) provides a beautiful, opinionated desktop environment with extensive customization options, pre-configured development tools, and a streamlined user experience for both casual users and developers.

## Core Features

### Desktop Environment

- **Hyprland Wayland Compositor** - Modern, GPU-accelerated window manager
- **Walker Application Launcher** - Fast and intuitive app launcher
- **Waybar** - Highly customizable status bar
- **Multiple Terminal Options** - Ghostty, Alacritty, and Kitty support

### Theme System

eclipseOS includes **14 pre-installed themes** with seamless switching capabilities:

- Catppuccin & Catppuccin Latte
- Ethereal
- Everforest
- Flexoki Light
- Gruvbox
- Hackerman
- Kanagawa
- Matte Black
- Nord
- Osaka Jade
- Ristretto
- Rose Pine
- Tokyo Night

Theme management includes synchronized updates across all applications including browsers, VSCode, and cursor themes.

### Package Management

Comprehensive package ecosystem with **140+ pre-installed packages**:

**Core Tools:**
- **1Password** - Password management with CLI
- **Docker & Docker Compose** - Container management
- **Neovim** - Pre-configured text editor using **LazyVim**
- **Yay** - AUR helper for community packages

**Additional packages** installed via custom setup script:
- Visual Studio Code
- Zen Browser
- GitHub Desktop
- Vesktop (Discord client)
- Clipse (clipboard manager)
- Spicetify themes for Spotify customization

### Media & Capture Tools

**Screenshot Capabilities:**
- Smart screenshot with editing (Satty integration)
- Direct-to-clipboard capture

**Screen Recording:**
- GPU-accelerated recording
- Desktop audio recording
- Microphone audio capture
- Webcam integration

**Additional Media Tools:**
- MPV media player 
- Kdenlive video editor 
- OBS Studio for streaming

### Security Features

**Authentication Methods:**
- **Fingerprint authentication** setup and management 
- **FIDO2 hardware key** support 
- **Drive encryption** password management

**Network Security:**
- UFW firewall pre-configured
- DNS configuration tools

### System Management

**Snapshot System:**
- Automated system snapshots using Snapper
- Limine bootloader integration for snapshot restoration

**Swap Configuration:**
Intelligent swap setup with dual-tier memory management:
- **ZRAM** (50% of RAM) with lz4 compression for fast swap
- **Swapfile** (50% of RAM) on SSD for extended swap capacity  

**Power Management:**
- Power profiles daemon with multiple performance modes  
- Idle management with Hypridle  
- Screen lock with Hyprlock 
- Night light with Hyprsunset

### Gaming Support

Pre-configured gaming ecosystem:
- Steam installation support
- RetroArch emulation platform
- Xbox controller support

### AI Integration

Built-in support for AI development tools:
- Claude Code
- Cursor CLI
- OpenAI Codex
- Gemini CLI
- LM Studio
- Ollama (with CUDA/ROCm support)
- Crush
- opencode

### Editor Support

Multiple default code editors:
- **Visual Studio Code**
- **Neovim**

Clipse as default clipboard manager (SUPER + V)

### Web Applications

**Web App Installation:**
Custom web app installation system for creating desktop applications from websites

**Pre-configured Apps:**
- **WhatsApp (Altus)** - Installed as AppImage with desktop integration - [GitHub Repo](https://github.com/amanharwara/altus)
- **Spotify** with Spicetify customization and marketplace

### 🔧 Command-Line Tools

Rich CLI ecosystem including:
- **Fish shell** with custom configuration
- **Lazygit** & **Lazydocker** for Git and Docker management
- **btop** for system monitoring
- **Fastfetch** for system information
- **Zoxide** for smart directory navigation

### Interactive Menu System

Comprehensive TUI menu system for system management accessible via `eclipse-menu` (SUPER + SHIFT + D):

- Application launching
- System configuration
- Theme management
- Package installation/removal
- Hardware setup (WiFi, Bluetooth, Audio)
- Security configuration
- Update management

### Productivity Applications

**Office Suite:**
- LibreOffice Fresh
- Typora markdown editor
- Calcurse calendar/organizer

**File Management:**
- Nautilus file manager
- GNOME Disk Utility

**Graphics:**
- Pinta image editor 
- Okular document viewer
- Evince PDF viewer

### Multimedia

- **Spotify** with Spicetify theming
- **MPV** media player
- **Pipewire** audio server

### Internationalization

- Multiple keyboard layout support 
- FCitx5 input method framework
- Comprehensive font coverage (Noto Fonts CJK, Emoji, etc.)

### Hardware Support

**Specialized Hardware:**
- **Apple T2 MacBook** support with custom drivers
- **NVIDIA** GPU support (DKMS drivers)
- **Intel VA-API** acceleration

## System Requirements

- **Architecture**: x86_64
- **Base**: Arch Linux
- **Display Server**: Wayland
- **Recommended**: 8GB+ RAM (for optimal swap configuration)

## License

Released under the MIT License.