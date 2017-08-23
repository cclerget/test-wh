FROM busybox

RUN mkdir /testing
RUN cd /testing
RUN touch file
