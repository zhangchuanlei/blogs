package com.blogs;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.redis.repository.configuration.EnableRedisRepositories;

@EnableRedisRepositories
@SpringBootApplication
public class BlogsImplApplication {

	public static void main(String[] args) {
		SpringApplication.run(BlogsImplApplication.class, args);
	}
}
