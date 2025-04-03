#!/bin/bash
# Install Maven
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install maven

# Run the Maven build
mvn clean package
