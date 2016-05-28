FROM rhel7:latest
 
COPY nginx-repo/nginx-repo /etc/yum.repos.d/nginx.repo
 
RUN yum nginx -y && yum clean all -y

LABEL io.k8s.description="Nginx web server image"

 
CMD ["usage"]
