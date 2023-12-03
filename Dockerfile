FROM alpine:3.18.4
RUN apk update && apk add abuild sudo && \
   addgroup -g 1000 build && adduser -D -u 1000 -G build build && adduser build abuild && \
   echo "build ALL=(ALL:ALL) ALL" >> /etc/sudoers 
   

   

