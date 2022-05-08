package com.statusraja;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@PropertySource(value="classpath:/properties/application-${spring.profiles.active}.properties")
public class StatusRajaApplication {

	public static void main(String[] args) {
		SpringApplication.run(StatusRajaApplication.class, args);
	}

}
