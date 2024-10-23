FROM openjdk:17
EXPOSE 8761
##ADD target/hpa-eureka-discovery-service-docker.jar hpa-eureka-discovery-service-docker.jar
##ENTRYPOINT ["java","-jar","/hpa-eureka-discovery-service-docker.jar"]
ADD target/discovery-service-docker.jar app-discovery-service.jar
ENTRYPOINT exec java -jar /app-discovery-service.jar discovery-service