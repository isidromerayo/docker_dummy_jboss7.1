FROM jackboot7/jboss7
ADD ModuleEAR.ear /opt/jboss/standalone/deployments/
USER root
RUN chown jboss:jboss /opt/jboss/standalone/deployments/ModuleEAR.ear
USER jboss
