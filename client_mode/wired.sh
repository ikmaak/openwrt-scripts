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
uci delete network.wan6
for entry in `uci show firewall -X | cut -d = -f 1`; do uci -q delete $entry; done
for entry in `uci show dhcp -X | cut -d = -f 1`; do uci -q delete $entry; done

# load new config
uci set network.lan=interface
uci set network.lan.proto=dhcp
uci set network.lan.ifname='eth1' # or eth0, according to your platform

# save config
uci commit

# reload network config
ubus call network reload # or ifup -a
