FROM gradle:7.6.3-jdk11

WORKDIR /app

COPY . sagan-renderer

RUN cd sagan-renderer && gradle build

# ENV SPRING_PROFILES_ACTIVE=cloud,production
# ENV JBP_CONFIG_SPRING_AUTO_RECONFIGURATION="{enabled: false}"
# ENV JBP_CONFIG_OPEN_JDK_JRE="{ jre: { version: 11.+ } }"

RUN cp sagan-renderer/build/libs/sagan-renderer-1.0.0-SNAPSHOT.jar .

CMD ["java", "-jar", "sagan-renderer-1.0.0-SNAPSHOT.jar"]