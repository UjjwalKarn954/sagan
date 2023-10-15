# Use an official Gradle image as the base image
FROM gradle:7.6.3-jdk11

# Set the working directory
WORKDIR /app

# Install Node.js
RUN apt-get update && \
    apt-get install -y nodejs

# Copy your application's source code to the container
COPY . sagan

# Build the Gradle project
RUN cd sagan && gradle :sagan-site:build

# Copy the built JAR file
RUN cp sagan/sagan-site/build/libs/sagan-site-1.0.0-SNAPSHOT.jar .

# Set environment variables (uncomment these lines if needed)
# ENV SPRING_PROFILES_ACTIVE=cloud,standalone
# ENV JBP_CONFIG_SPRING_AUTO_RECONFIGURATION="{enabled: false}"
# ENV JBP_CONFIG_OPEN_JDK_JRE="{ jre: { version: 11.+ } }"

# Start your Java application
CMD ["java", "-jar", "sagan-site-1.0.0-SNAPSHOT.jar"]