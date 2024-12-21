FROM bellsoft/liberica-openjdk-alpine:11.0.16.1-1
LABEL authors="Артем"
COPY ./src ./src
RUN mkdir ./out
RUN javac -sourcepath ./src -d out ./src/ru/gb/sample/Main.java
CMD java -classpath ./out ru.gb.sample.Main
