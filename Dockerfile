# Use the official Node.js 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose the port that the app will run on (usually 3000 by default)
EXPOSE 3000

# Start the React app when the container starts
CMD [ "npm", "start" ]
=======================================================================================================================
# java application docker multi build docker file 
# Stage 1: Build the application
#FROM maven:3.8.5-openjdk-17 AS build

# Set the working directory
#WORKDIR /app

# Copy the pom.xml and download dependencies
#COPY pom.xml .
#COPY src ./src
#RUN mvn clean package -DskipTests

# Stage 2: Create the runtime image
#FROM openjdk:17-jdk-slim

# Set the working directory in the final image
#WORKDIR /app

# Copy the built JAR file from the build stage
#COPY --from=build /app/target/myapp.jar myapp.jar

# Specify the command to run the application
#CMD ["java", "-jar", "myapp.jar"]  */




