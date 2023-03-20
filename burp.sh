#!/bin/bash
# Author Gemstone Hashghost

# Navigating to the burpsuite folder
# cd /opt/burpsuite

# Load the burpsuite application
java --add-opens=java.desktop/javax.swing=ALL-UNNAMED \
--add-opens=java.base/java.lang=ALL-UNNAMED \
--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED \
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED \
--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED \
-javaagent:/opt/burpsuite/Loader.jar -noverify -jar /opt/burpsuite/burpsuite_pro_v2023.2.2.jar


# Older script
# java -javaagent:BurpSuiteLoader_v2022.8.jar --illegal-access=permit -Dfile.encoding=utf-8 -noverify -jar burpsuite_pro_v2022.8.jar
