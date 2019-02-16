docker build -t paths-lb:latest .
wait $PID
echo "completed building docker image"
echo "running docker image"
docker run --rm -it -p 80:80 paths-lb
wait $PID
