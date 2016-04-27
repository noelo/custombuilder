FROM springboot-base
 
ENV JAVA_HOME=/etc/alternatives/java_sdk_openjdk/
ENV BUILDER_VERSION 1.0
 
LABEL io.k8s.description="Platform for building Spring Boot applications"
LABEL io.openshift.s2i.scripts-url=image:///usr/local/sti

COPY ./bin/ /tmp/
 
USER 1001
RUN /tmp/curlget.sh  
CMD ["usage"]
