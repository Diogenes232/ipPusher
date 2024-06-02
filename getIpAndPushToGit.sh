cd /home/ubuntu/ipPusher
curl http://checkip.amazonaws.com

# create simple text file
dig +short myip.opendns.com @resolver1.opendns.com > resolvedIp.txt
git add resolvedIp.txt

# create html redirection
echo "<html><head><title>Redirect..</title></head><body><br /><a href='http://" > resolvedRedirection.html
dig +short myip.opendns.com @resolver1.opendns.com >> resolvedRedirection.html
echo ":4200'>Redirect to EC2 instance</a></body></html>" >> resolvedRedirection.html
git add resolvedRedirection.html

git commit -m "update ec2's ip"
git push
