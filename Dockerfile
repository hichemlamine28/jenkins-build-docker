FROM nginx:latest
RUN sed -i 's/nginx/hichem/g' /usr/share/nginx/html/index.html
EXPOSE 80
