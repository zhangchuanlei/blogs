package com.blogs;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//@ComponentScan(basePackages = "com.blogs")
public class BlogsImplApplication {

	public static void main(String[] args) {
		SpringApplication.run(BlogsImplApplication.class, args);
	}
}
