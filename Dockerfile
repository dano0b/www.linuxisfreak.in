FROM nginx:alpine

ADD https://raw.githubusercontent.com/dano0b/playbooks/master/roles/nginx/files/mynginx.conf /etc/nginx/nginx.conf
ADD https://raw.githubusercontent.com/dano0b/playbooks/master/roles/nginx/files/www.linuxisfreak.in.conf /etc/nginx/conf.d/
ADD https://raw.githubusercontent.com/dano0b/playbooks/master/roles/nginx/files/www.linuxisfreak.in.ssl.conf /etc/nginx/conf.d/

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]

