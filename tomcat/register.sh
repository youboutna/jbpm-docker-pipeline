#!/bin/bash 
OKM_VERSION="8.1.13" 
JBPM_VERSION="2.3" 

# Register OpenKM libraries 
#!/bin/bash
VERSION="7.1.22"
JBPM_VERSION="1.8"

# Register OpenKM libraries
mvn install:install-file -DgroupId=com.openkm -DartifactId=openkm -Dversion=${VERSION} -Dclassifier=client -Dpackaging=jar -Dfile=openkm-client.jar
mvn install:install-file -DgroupId=com.openkm -DartifactId=openkm -Dversion=${VERSION} -Dclassifier=jar-with-dependencies -Dpackaging=jar -Dfile=openkm-jar-with-dependencies.jar

# Register Jbpm libraries
mvn install:install-file -DgroupId=com.openkm -DartifactId=jbpm-console -Dversion=${JBPM_VERSION} -Dpackaging=jar -Dfile=jbpm-client.jar

#Execute the register.sh scrip
