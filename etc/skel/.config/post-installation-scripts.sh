#set OpenDesktop-Dark as default KDE Plasma Global Theme
sudo sed -i 's/LookAndFeelPackage=org.kde.breezetwilight-arcolinux.desktop/LookAndFeelPackage=OpenDesktop-Dark/g' /etc/skel/.config/kdeglobals

#set Qogir-dark style as Plasma style 
sudo sed -i 's/name=breeze-dark/name=Qogir-dark/g' /etc/skel/.config/plasmarc

#find and remove pager from bottom bar config
#find line number where pager is located
l2="$(grep -n "plugin=org.kde.plasma.pager" /etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc | head -n 1 | cut -d: -f1)"
#calc and remove this line as well as the previous two lines
l1=$((l2-2))
sed -i.bak -e ${l1}','${l2}'d' /etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc 
