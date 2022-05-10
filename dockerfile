FROM nginx:alpine

ENV MYFOLDER /usr/share/nginx/html
ENV TIMEZONE Europe/Paris
RUN apk update && apk upgrade && apk --update --no-cache add bash 
WORKDIR $MYFOLDER

EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
