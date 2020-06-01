FROM nginx:latest
RUN sed -i 's/nginx/nginx by hichem/g' /usr/share/nginx/html/index.html
EXPOSE 80
