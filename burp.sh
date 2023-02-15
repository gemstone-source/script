#!/bin/bash
cd /opt/burpsuite

java -javaagent:BurpSuiteLoader_v2022.8.jar --illegal-access=permit -Dfile.encoding=utf-8 -noverify -jar burpsuite_pro_v2022.8.jar
