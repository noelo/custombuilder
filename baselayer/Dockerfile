FROM centos7:latest
 
ENV MAVEN_VERSION 3.3.3
 
RUN yum install -y \
    tar unzip bc which lsof java-1.8.0-openjdk java-1.8.0-openjdk-devel openssl wget curl && \
    yum clean all -y && \
    (curl -0 http://www.eu.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | \
    tar -zx -C /usr/local) && \
    mv /usr/local/apache-maven-$MAVEN_VERSION /usr/local/maven && \
    ln -sf /usr/local/maven/bin/mvn /usr/local/bin/mvn && \
    mkdir -p /opt/openshift && \
    mkdir -p /opt/app-root/source && chmod -R a+rwX /opt/app-root/source && \
    mkdir -p /opt/s2i/destination && chmod -R a+rwX /opt/s2i/destination && \
    mkdir -p /opt/app-root/src && chmod -R a+rwX /opt/app-root/src
 
ENV PATH=/opt/maven/bin/:$PATH
 
ENV JAVA_HOME=/etc/alternatives/java_sdk_openjdk/
ENV BUILDER_VERSION 1.0
 
LABEL io.k8s.description="Platform for building Spring Boot applications, layer contains java8 maven"
LABEL io.openshift.s2i.scripts-url=image:///usr/local/sti

COPY ./.sti/bin/ /usr/local/sti
RUN chmod -R a+x /usr/local/sti/*
 
COPY settings.xml /usr/local/maven/conf/
 
RUN chown -R 1001:1001 /opt/openshift
 
CMD ["usage"]
