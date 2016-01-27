### OpenWrt client mode
These scripts will disable all OpenWrt routing and firewalling functions, thus turning your router into a simple Linux client connected to your network via wired or wireless.

I've written these scripts for turning my OpenWrt embedded devices into dumb IoT nodes which collect sensor data, process it a little and relay it over IP to some central hub, such as [Phant](http://phant.io/).

My reference platform is GL.iNet 6416A, perhaps the most hacker-friendly travel router, coming with with 16MB SPI flash, 64 MB RAM, dual Ethernet, 802.11n radio, USB 2.0 and 5 GPIOs, Atheros AR9330 based. You can read more about it [here](https://revspace.nl/GL-iNet), or you can find more compact routers [here](https://github.com/lcafaro/openwrt-scripts/blob/master/doc/cheap_travel_routers.md).

These scripts are meant to be run via the serial port. Once the nodes get a DHCP lease you can access them via telnet, ssh or LuCI.
