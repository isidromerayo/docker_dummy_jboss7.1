FROM jackboot7/jboss7
MAINTAINER isidromerayo isidro.merayo@gmail.com

# language
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# custom configuration
COPY standalone.xml /opt/jboss/standalone/configuration/


# Dummy project
ADD ModuleEAR.ear /opt/jboss/standalone/deployments/
USER root
RUN chown jboss:jboss /opt/jboss/standalone/deployments/ModuleEAR.ear
USER jboss
