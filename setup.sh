#!/bin/sh

#put file in thh proper place
sudo cp ./frpc /usr/bin/

if [ ! -d "/etc/frp" ]; then
    sudo mkdir /etc/frp
fi

sudo cp ./frpc.ini /etc/frp/


sudo cp ./frpc.service /lib/systemd/system/

sudo systemctl start frpc

#make it start after reboot
sudo systemctl enable frpc
