FROM rhel7:latest
 
COPY nginx-repo/nginx-repo /etc/yum.repos.d/nginx.repo
 
RUN yum install nginx -y && yum clean all -y

COPY conf/default.conf /etc/nginx/conf.d/
COPY conf/nginx.conf /etc/nginx/nginx.conf

LABEL io.k8s.description="Nginx web server image listning on 8090"

RUN ln -sf /dev/stdout /var/log/nginx/access.log  && ln -sf /dev/stderr /var/log/nginx/error.log

RUN mkdir -p /var/cache/nginx

RUN chown -R nginx:nginx /var/cache/nginx

USER nginx 

EXPOSE 8090
CMD ["nginx", "-g", "daemon off;"]
