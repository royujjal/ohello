# Stage 1 – Build the C application
FROM alpine:latest

# Add lib/bin/pkg into Linux
RUN apk add --no-cache gcc musl-dev

# Install vim and ctags into the Alpine
#USER root
#RUN apk update && apk add --no-cache vim ctags
#USER 1001

FROM gcc:14 AS builder
WORKDIR /app
COPY hello.c .
RUN gcc hello.c -o myapp

# Stage 2 – Create runtime image
#CMD ["while true; do sleep 1; done &"]

CMD ["./myapp"]
