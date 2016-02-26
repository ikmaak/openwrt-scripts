# reset the config
firstboot
reboot -f

# disable firewall completely
fw3 flush
fw3 stop
/etc/init.d/firewall disable

# disable dnsmasq
/etc/init.d/dnsmasq stop
/etc/init.d/dnsmasq disable

# disable dhcp daemon
/etc/init.d/odhcpd stop
/etc/init.d/odhcpd disable

# clean up defaults
uci delete network.lan
uci delete network.wan
for entry in `uci -X show firewall | cut -d = -f 1`; do uci -q delete $entry; done
for entry in `uci -X show dhcp | cut -d = -f 1`; do uci -q delete $entry; done

# load new config
uci set network.lan=interface
uci set network.lan.proto=dhcp
uci set wireless.radio0=wifi-device
uci set wireless.radio0.disabled='0'
uci set wireless.@wifi-device[0].disabled=0
uci set wireless.@wifi-iface[0].network=lan
uci set wireless.@wifi-iface[0].mode=sta
uci set wireless.@wifi-iface[0].ssid="MySSID"
uci set wireless.@wifi-iface[0].encryption="psk2"
uci set wireless.@wifi-iface[0].key="MyVeryPrivatePassword"

# save config
uci commit

# reload network config and start wifi
ubus call network reload
wifi up
