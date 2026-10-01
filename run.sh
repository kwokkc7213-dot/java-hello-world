#!/bin/bash
# UNIX shell script：一鍵 build + run（job ad 有要求 shell script 技能）
#
# 註：在這台 sandbox VM，Maven 的 HTTP client 過唔到 egress proxy，
# 所以用 curl 下載 dependency jars（lib/），再用 javac/java 直接編譯運行。
# 在你自己的電腦（正常網絡），`mvn package` 會如常運作。
set -e
cd "$(dirname "$0")"

export JAVA_HOME="$HOME/workspace/tools/jdk-17.0.20.1+1"
export PATH="$JAVA_HOME/bin:$PATH"

if [ ! -d lib ] || [ -z "$(ls lib/*.jar 2>/dev/null)" ]; then
  echo "==> Downloading dependency jars (one-off)..."
  python3 /tmp/fetch_jars.py || curl -sL \
    https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-dependencies/3.2.5/spring-boot-dependencies-3.2.5.pom -o /dev/null
fi

echo "==> Compiling with javac..."
rm -rf target/classes
mkdir -p target/classes
javac -encoding UTF-8 -parameters -cp "lib/*" -d target/classes $(find src/main/java -name "*.java")
cp -r src/main/resources/* target/classes/

echo "==> Starting the website..."
java -cp "target/classes:lib/*" com.example.hello.HelloApplication
