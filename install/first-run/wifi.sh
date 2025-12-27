if ! ping -c3 -W1 1.1.1.1 >/dev/null 2>&1; then
  notify-send "    Update System" "When you have internet, click to update the system." -u critical
  notify-send "󰖩    Click to Setup Wi-Fi" "Tab to navigate, Space to select, ? for help." -u critical
  notify-send "    Set Up eclipseOS" "Run the eclipseOS setup script to configure your system." -u critical

else
  notify-send "    Update System" "Click to update the system." -u critical
  notify-send "    Set Up eclipseOS" "Run the eclipseOS setup script to configure your system." -u critical
fi
