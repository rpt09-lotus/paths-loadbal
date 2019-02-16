FROM nginx

#remove default.conf file that comes in nginx container
RUN rm /etc/nginx/conf.d/default.conf

#remove default index.html that comes in nginx container
RUN rm /usr/share/nginx/html/index.html

#Copy new static html file to html folder
COPY /content/index.html /usr/share/nginx/html

#Copy new config file for nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d

#make directory in docker container for static files
RUN mkdir /usr/share/nginx/static

#copy 
COPY /content/loaderio-26f7a9eba70af01decffa244ebf0b472.txt /usr/share/nginx/static

#add read permission for new index.html
RUN chmod +r /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]