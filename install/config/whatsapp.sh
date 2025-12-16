# Crear directorio de la app
mkdir -p ~/Documents/Apps/Whatsapp

# Descargar AppImage de WhatsApp

curl -L \
$(curl -s https://api.github.com/repos/amanharwara/altus/releases/latest \
 | grep browser_download_url \
 | grep AppImage \
 | cut -d '"' -f 4) \
-o ~/Documents/Apps/Whatsapp/whatsapp.AppImage


# Dar permisos de ejecución
chmod +x ~/Documents/Apps/Whatsapp/whatsapp.AppImage

# Crear archivo .desktop del sistema
sudo tee /usr/share/applications/whatsapp.desktop > /dev/null <<EOF
[Desktop Entry]
Type=Application
Name=WhatsApp
Exec=$HOME/Documents/Apps/Whatsapp/whatsapp.AppImage
Terminal=false
Categories=Network;InstantMessaging;
EOF

