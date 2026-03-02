# pacman can end up depending/pointing to outdated mirrors with slow download rates. This command will re-order all available mirrors by rate, not response time. You might need to run this periodically if a mirror you currently depend on gets taken down for maintance or gets a DDOS attack or just gets taken offline altogether.
sudo reflector --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist --verbose
# just force update on every package, with prejudice
#sudo pacman -Syyu --noconfirm
