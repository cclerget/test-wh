FROM busybox

COPY ./hello /

RUN rm -f /hello
