# Covid19_APIAutomation

Introduction
API Automation framework for COVID19 challenge
Getting Started
TODO: Guide users through getting your code up and running on their own system. In this section you can talk about:

Installation process
To install - use one the following build & test commands
Software dependencies
*Maven - https://maven.apache.org/ 
*Java - https://www.oracle.com/java/technologies/javase-jdk8-downloads.html 
*Git
*VS Code
*VS Code Plugins 
  - Cucmber (Gherkin) full support
  - Karate Runner
  - Java Extension Pack


API references

Karate - https://github.com/intuit/karate 
Build and Test


Command to run E2E scenario
mvn clean test -Dkarate.env=dev -Dkarate.options="--tags @E2E" -Dtest=TestRunner

