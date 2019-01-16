FROM busybox

ENTRYPOINT python -c "print \"$HOME\""
