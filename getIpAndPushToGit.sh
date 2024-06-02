cd /home/ubuntu/ipPusher
curl http://checkip.amazonaws.com
dig +short myip.opendns.com @resolver1.opendns.com
dig +short myip.opendns.com @resolver1.opendns.com > resolvedIp.txt
git add resolvedIp.txt
git commit -m "update ec2's ip"
git push
