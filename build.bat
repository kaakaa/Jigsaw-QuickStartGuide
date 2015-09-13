mkdir mods mods\com.greetings mods\org.astro

javac -d mods\org.astro src\org.astro\module-info.java src\org.astro\org\astro\World.java
javac -modulepath mods -d mods\com.greetings src\com.greetings\module-info.java src\com.greetings\com\greetings\Main.java
