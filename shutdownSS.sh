#!/usr/bin

while true
do 
    procnum=` ps -ef | grep "ss-server" |  grep -v "grep" | wc -l`
    if [ $procnum  -eq 0 ]; then
        rm /root/log.log
        /usr/local/bin/ss-server -c  /etc/shadowsock-libev/config.json -u -v >>/root/log.log 2>/root/log.log&
    fi
    sleep 3
done

