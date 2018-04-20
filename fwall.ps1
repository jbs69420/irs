netsh advfirewall firewall add rule name="Allow LDAP tcp" dir=in action=allow protocol=TCP localport=389
netsh advfirewall firewall add rule name="Allow LDAP udp" dir=in action=allow protocol=UDP localport=389
netsh advfirewall firewall add rule name="Allow LDAP tcp2" dir=in action=allow protocol=TCP localport=36
netsh advfirewall firewall add rule name="Allow global catalog" dir=in action=allow protocol=TCP localport=3268
netsh advfirewall firewall add rule name="Allow DNS tcp in" dir=in action=allow protocol=TCP localport=53
netsh advfirewall firewall add rule name="Allow DNS udp in" dir=in action=allow protocol=UDP localport=53
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
netsh advfirewall firewall add rule name="ICMP Allow outgoing V4 echo request" protocol=icmpv4:8,any dir=out action=allow
netsh advfirewall firewall add rule name="Allow HTTP" protocol=TCP,UDP dir=in action=allow localport=80
netsh advfirewall firewall add rule name="Allow HTTPS" protocol=TCP,UDP dir=in action=allow localport=443
netsh advfirewall firewall add rule name="Block all" dir=in action=drop protocol=ANY localport=any 
