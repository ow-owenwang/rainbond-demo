FROM openjdk:17-jdk-slim

RUN wget -O /demo-rainbond-0.0.1-SNAPSHOT.jar https://raw.githubusercontent.com/ow-owenwang/rainbond-demo/main/demo-rainbond-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["sh", "-c", "java -Duser.timezone=Asia/Shanghai -Dfile.encoding=UTF-8 $JAVA_OPTS -jar /oceanintelligence-application.jar --spring.config.location=/data/config/application.yml"]
ENTRYPOINT ["java", "-Xms512m", "-Xmx2g","-Duser.timezone=Asia/Shanghai", "-Dfile.encoding=UTF-8","-jar","/demo-rainbond-0.0.1-SNAPSHOT.jar"]
