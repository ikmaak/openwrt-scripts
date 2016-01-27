# batch delete uci entries (asterisk ones, in this example)
for entry in `uci show asterisk -X | cut -d = -f 1`; do uci delete $entry; done

# or..
while uci -q delete dhcp.@dhcp[0]; do true; done
