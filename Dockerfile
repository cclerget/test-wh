FROM busybox

ENTRYPOINT ["ls", "-la", "$HOME"]
