nmcli dev show | grep 'IP4.DNS'

# To insert into /etc/docker/daemon.json
#{
#    "dns": ["x.x.x.x", "8.8.8.8"]
#}
# sudo service docker restart
