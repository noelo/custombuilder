FROM springboot-base
 
ENV JAVA_HOME=/etc/alternatives/java_sdk_openjdk/
ENV BUILDER_VERSION 1.0
 
LABEL io.k8s.description="Platform for building Spring Boot applications"
LABEL io.openshift.s2i.scripts-url=image:///usr/local/sti


COPY ./bin/ /opt/openshift/bin
RUN chown -R 1001:1001 /opt/openshift
 
USER 1001
RUN env
RUN /opt/openshift/bin/curlget.sh  
CMD ["usage"]
