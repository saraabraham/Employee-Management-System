#!/bin/bash

# Install Maven (if not already installed)
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install maven

# Install Java (or set JAVA_HOME for pre-installed Java)
sdk install java 17.0.7-tem    # Install Java 17 (you can choose another version)
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"

# Verify Java and Maven installations
java -version
mvn -version

# Run Maven build
mvn clean package -DskipTests


