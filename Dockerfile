FROM busybox

RUN mkdir /testing
WORKDIR /testing
RUN touch file
