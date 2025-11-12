FROM nginx:latest
RUN sed -i 's/nginx/fahima/g' /usr/share/nginx/html/index.html
EXPOSE 8089
