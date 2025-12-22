# Install AUR packages with yay (clean build)

omarchy-launch-floating-terminal-with-presentation

AUR_PACKAGES=(
  "zen-browser-bin"
  "github-desktop-bin"
)

# Clean build install
for pkg in "${AUR_PACKAGES[@]}"; do
  yay -S --noconfirm --cleanbuild "$pkg"
done
