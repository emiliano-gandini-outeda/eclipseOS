omarchy-launch-floating-terminal-with-presentation

echo "=== Configuring Spicetify ==="

SPOTIFY_PREFS="$HOME/.config/spotify/prefs"
SPOTIFY_INSTALL="/opt/spotify"

# Crear prefs falso si no existe
if [ ! -f "$SPOTIFY_PREFS" ]; then
    echo "-> Spotify prefs not found, creating a fake prefs..."
    mkdir -p "$(dirname "$SPOTIFY_PREFS")"
    touch "$SPOTIFY_PREFS"
fi

# Ajustar permisos para que Spicetify pueda escribir
if [ -d "$SPOTIFY_INSTALL" ]; then
    echo "-> Adjusting permissions for /opt/spotify..."
    sudo chown -R $USER:$USER "$SPOTIFY_INSTALL"
fi

# Initial backup & apply
spicetify backup apply

# Install Marketplace
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh

# Update Spicetify (themes/extensions)
spicetify update

# Apply final config
spicetify apply
