package com.example.hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 程式入口。@SpringBootApplication 會自動掃描同一個 package
 * 入面嘅 @RestController 等 component，然後起個內嵌 Tomcat server。
 */
@SpringBootApplication
public class HelloApplication {

    public static void main(String[] args) {
        SpringApplication.run(HelloApplication.class, args);
        System.out.println(">>> Hello World website is running: http://localhost:8080");
    }
}
