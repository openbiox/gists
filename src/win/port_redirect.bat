:: replace 172.17.65.156 to your host
:: wsl2 has not been support access the network via localhost
:: we need run the redirect service
netsh interface portproxy add v4tov4 listenport=80 connectport=80 connectaddress=172.17.65.156 protocol=tcp
netsh interface portproxy add v4tov4 listenport=21 connectport=21 connectaddress=172.17.65.156 protocol=tcp
netsh interface portproxy add v4tov4 listenport=22 connectport=22 connectaddress=172.17.65.156 protocol=tcp
netsh interface portproxy add v4tov4 listenport=3306 connectport=3306 connectaddress=172.17.65.156 protocol=tcp
netsh interface portproxy add v4tov4 listenport=8080 connectport=8080 connectaddress=172.17.65.156 protocol=tcp
netsh interface portproxy add v4tov4 listenport=3030 connectport=3030 connectaddress=172.17.65.156 protocol=tcp
netsh interface portproxy add v4tov4 listenport=3737 connectport=3737 connectaddress=172.17.65.156 protocol=tcp
netsh interface portproxy add v4tov4 listenport=8787 connectport=8787 connectaddress=172.17.65.156 protocol=tcp
