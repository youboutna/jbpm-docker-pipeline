ARG TOMCAT_VERSION
FROM tomcat:${TOMCAT_VERSION}-jdk11

# PostgreSQL JDBC version
ARG POSTGRES_JDBC_VERSION=42.7.3

# Copy jbpm-console.war into Tomcat webapps
COPY jbpm-console.war /usr/local/tomcat/webapps/jbpm-console.war

# Download PostgreSQL JDBC driver into Tomcat lib
RUN apt-get update && apt-get install -y curl && \
    curl -L -o /usr/local/tomcat/lib/postgresql-${POSTGRES_JDBC_VERSION}.jar \
    https://jdbc.postgresql.org/download/postgresql-${POSTGRES_JDBC_VERSION}.jar && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy configs
COPY jbpm-console.properties /usr/local/tomcat/jbpm-console.properties
COPY params.properties /usr/local/tomcat/conf/params.properties

# Make Tomcat aware of params.properties
ENV CATALINA_OPTS="-Dconfig.file=/usr/local/tomcat/conf/params.properties"

EXPOSE 8080
CMD ["catalina.sh", "run"]
