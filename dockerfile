FROM nginx
WORKER /usr/share/nginx/html/
RUN rm index.html
RUN touch index.html
RUN echo "this is in container" > index.html
EXPOSE 80
CMD ["httpd" , "d" , "forground",]
