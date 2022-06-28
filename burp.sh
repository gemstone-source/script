#!/bin/bash
cd /opt/burpsuite

java -javaagent:BurpSuiteLoader_v2022.2.4.jar  -noverify -jar burpsuite_pro_v2022.2.4.jar
