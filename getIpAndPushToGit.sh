cd /home/ubuntu/ipPusher
curl http://checkip.amazonaws.com

echo "<html><head><title>Redirect..</title></head><body><br /><a href='http://" > resolvedRedirection.html
dig +short myip.opendns.com @resolver1.opendns.com >> resolvedRedirection.html
echo ":4200'>Redirect to EC2 instance</a></body></html>" >> resolvedRedirection.html
git add resolvedRedirection.html

dig +short myip.opendns.com @resolver1.opendns.com > resolvedIp.txt
git add resolvedIp.txt

git commit -m "update ec2's ip"
git push
