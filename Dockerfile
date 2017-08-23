FROM busybox

COPY ./hello /
RUN mkdir /testing
RUN rm -rf /testing
RUN rm -f /hello
