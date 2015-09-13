@echo off

mkdir mods mods\com.greetings mods\org.astro

javac -d mods\org.astro src\org.astro\module-info.java src\org.astro\org\astro\World.java
javac -modulepath mods -d mods\com.greetings src\com.greetings\module-info.java src\com.greetings\com\greetings\Main.java

mkdir mlib

jar --create --archive=mlib\org.astro@1.0.jar --module-version=1.0 -C mods\org.astro .
jar --create --archive=mlib\com.greetings.jar --main-class=com.greetings.Main -C mods\com.greetings .
