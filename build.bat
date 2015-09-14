@echo off

mkdir mods mods\com.greetings mods\com.socket mods\org.fastsocket

javac -d mods -modulesourcepath src src\com.socket\com\socket\NetworkSocket.java src\com.socket\com\socket\spi\NetworkSocketProvider.java
javac -d mods -modulesourcepath src src\org.fastsocket\org\fastsocket\FastNetworkSocketProvider.java
javac -modulepath mods -d mods\com.greetings src\com.greetings\module-info.java src\com.greetings\com\greetings\Main.java

