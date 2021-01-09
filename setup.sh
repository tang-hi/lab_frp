#!/bin/sh

#put file in thh proper place
#sudo cp ./frpc /usr/bin/

#if [ ! -d "/etc/frp" ]; then
#    sudo mkdir /etc/frp
#fi

#sudo cp ./frpc.ini /etc/frp/


sudo cp ./frpc_lxy.service /lib/systemd/system/

sudo systemctl start frpc_lxy

#make it start after reboot
sudo systemctl enable frpc_lxy
