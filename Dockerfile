FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
COPY static.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY app.js /usr/share/nginx/html/
COPY codes.js /usr/share/nginx/html/
COPY ij.jpg /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
