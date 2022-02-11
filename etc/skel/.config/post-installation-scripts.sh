sudo mkdir /tmp/aaaaaaaaaaaaaaa
l2="$(grep -n "plugin=org.kde.plasma.pager" /etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc | head -n 1 | cut -d: -f1)"
l1=$((l2-2))
sed -i.bak -e ${l1}','${l2}'d' /etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc 
