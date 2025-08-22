#!/bin/bash 
OKM_VERSION="8.1.13" 
JBPM_VERSION="2.3" 
# Download OpenKM libraries 
wget http://download.openkm.com/okm/portable/jar/openkm-${OKM_VERSION}-client.jar -O openkm-client.jar 
wget http://download.openkm.com/okm/portable/jar/openkm-${OKM_VERSION}-jar-with-dependencies.jar -O openkm-jar-with-dependencies.jar 
# Download jBPM libraries 
wget http://download.openkm.com/okm/pro/workflow/jbpm-${JBPM_VERSION}-client.jar -O jbpm-client.jar 
wget http://download.openkm.com/okm/pro/workflow/jbpm-${JBPM_VERSION}-jar-with-dependencies.jar -O jbpm-jar-with-dependencies.jar 
#Execute the download.sh script
