# Setup ZRAM (50% RAM) + SSD swapfile (50% RAM) using zram-generator
# All sizes expressed in MiB (no suffix)

# Get total RAM in MiB
TOTAL_RAM=$(awk '/MemTotal/ {print int($2/1024)}' /proc/meminfo)
HALF_RAM=$((TOTAL_RAM / 2))

# ---- Remove existing zram swaps ----
for dev in $(swapon --show=NAME --noheadings | grep zram); do
  sudo swapoff "$dev"
done

sudo rm -f /etc/systemd/zram-generator.conf

# ---- Configure zram-generator ----
sudo tee /etc/systemd/zram-generator.conf >/dev/null <<EOF
[zram0]
zram-size = $HALF_RAM
compression-algorithm = lz4
swap-priority = 100
EOF

# ---- SSD swapfile ----
SWAPFILE=/swapfile

# Disable existing swapfile
if swapon --show=NAME --noheadings | grep -q "$SWAPFILE"; then
  sudo swapoff "$SWAPFILE"
fi

# Recreate swapfile
sudo rm -f "$SWAPFILE"
sudo fallocate -l "$HALF_RAM"M "$SWAPFILE"
sudo chmod 600 "$SWAPFILE"
sudo mkswap "$SWAPFILE"
sudo swapon -p 10 "$SWAPFILE"

# Persist swapfile
if ! grep -q "^$SWAPFILE" /etc/fstab; then
  echo "$SWAPFILE none swap defaults,pri=10 0 0" | sudo tee -a /etc/fstab
fi

# ---- Reload zram ----
sudo systemctl daemon-reload
sudo systemctl restart systemd-zram-setup@zram0.service
