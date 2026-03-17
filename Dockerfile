FROM openjdk:17-jdk-slim

RUN wget --http-user=${NEXUS_USER} --http-password=${NEXUS_PASSWD} -O /oceanintelligence-application.jar http://172.16.1.37:8081/repository/maven-snapshots/oceanintelligence/oceanintelligence-application/${VERSION}/oceanintelligence-application-${VERSION_CODE}.jar
#ENTRYPOINT ["sh", "-c", "java -Duser.timezone=Asia/Shanghai -Dfile.encoding=UTF-8 $JAVA_OPTS -jar /oceanintelligence-application.jar --spring.config.location=/data/config/application.yml"]
ENTRYPOINT ["java", "-Xms512m", "-Xmx2g","-Duser.timezone=Asia/Shanghai", "-Dfile.encoding=UTF-8","-jar","/oceanintelligence-application.jar"]
