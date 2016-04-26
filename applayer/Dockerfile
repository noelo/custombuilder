FROM 172.30.79.54:5000/custombuilder/springboot-base:latest
 
ENV JAVA_HOME=/etc/alternatives/java_sdk_openjdk/
ENV BUILDER_VERSION 1.0
 
LABEL io.k8s.description="Platform for building Spring Boot applications"
LABEL io.openshift.s2i.scripts-url=image:///usr/local/sti

RUN chown -R 1001:1001 /opt/openshift
 
# This default user is created in the openshift/base-centos7 image
USER 1001
RUN env
RUN wget -O /opt/openshift/app.jar http://nexus-ci.cloudapps.nocosetest.com/content/repositories/releases/com/noc/test/sampleapp/1.0/sampleapp-1.0.jar  
CMD ["usage"]
