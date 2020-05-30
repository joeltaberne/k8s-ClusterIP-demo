FROM nginx:alpine

EXPOSE 80

CMD nginx && rm -rf /usr/share/nginx/html/index.html && touch /usr/share/nginx/html/index.html && echo "<h2>Hello, your request has been replied by pod with name $HOSTNAME</h2>" >> /usr/share/nginx/html/index.html && exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
