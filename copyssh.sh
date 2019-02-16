scp -i "~/.ssh/loadbal.pem" -r . ec2-user@ec2-54-173-145-56.compute-1.amazonaws.com:/home/ec2-user/app
wait
ssh -i "~/.ssh/loadbal.pem" ec2-user@ec2-54-173-145-56.compute-1.amazonaws.com