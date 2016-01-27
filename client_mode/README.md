### client_mode
These scripts will disable all routing and firewalling functions, thus turning your router into a simple Linux client connected to your home network via wired or wireless.

I've written these scripts for turning my OpenWRT embedded devices into dumb IoT nodes which collect data and relay it over IP to some central hub.

My reference platform is GL.iNet 6416A, perhaps the most hacker-friendly travel router, coming with with 16MB SPI flash, 64 MB RAM, dual Ethernet, 802.11n radio, USB 2.0 and 5 GPIOs, Atheros AR9330 based. You can read more about it [here](https://revspace.nl/GL-iNet).

These scripts are meant to be run via the serial port. Once the nodes get a DHCP lease you can access them via telnet, ssh or LuCI.
