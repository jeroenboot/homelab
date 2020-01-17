Two pi-hole instances
1. normal/unfiltered pihole
2. pihole with blacklists (for youtube videos)
3. each DNS server exposes pihole admin page (http://<host>:8181 = DNS1, http://<host>:8182 = DNS2)

Docker-compose to create the setup (three containers)\
A map based op source-ip selects the correct pihole server.

Each pihole exposes the admin-gui to make adjustments

```
7d4352576f1f        pihole/pihole:latest           "/s6-init"               2 months ago        Up 39 hours (healthy)   53/udp, 53/tcp, 443/tcp, 67/udp, 0.0.0.0:8181->80/tcp                    dns1
1a0b18f90b55        pihole/pihole:latest           "/s6-init"               2 months ago        Up 28 hours (healthy)   53/udp, 53/tcp, 443/tcp, 67/udp, 0.0.0.0:8182->80/tcp                    dns2
```