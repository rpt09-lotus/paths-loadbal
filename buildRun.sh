cd /home/ec2-user/app
docker build -t paths-lb:latest .
wait $PID
echo "completed building docker image"
echo "running docker image"
docker run --name nginx -d -p 80:80 paths-lb

