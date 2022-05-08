package com.statusraja.config;

import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSenderImpl;

//@Configuration
//@EnableAutoConfiguration
//public class MailConfiguration {
//
//	private static final Logger logger = LoggerFactory.getLogger(MailConfiguration.class);
//
//	@Autowired
//	MailProperties mailProperties;
//
//	@Bean
//	public JavaMailSenderImpl getMailSender() {
//	   logger.debug("*************** MailSender Configuration ******************");
//	   logger.info("Host :::" + mailProperties.getHost() + ", Post:" + mailProperties.getPort());
//	   logger.info("Username :::" + mailProperties.getUsername() + ", Password:" + mailProperties.getPassword());
//	   
//	   JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
//		mailSender.setHost(mailProperties.getHost());
//		mailSender.setPort(mailProperties.getPort());
//		mailSender.setUsername(mailProperties.getUsername());
//		mailSender.setPassword(mailProperties.getPassword());
//
//		Properties javaMailProperties = new Properties();
//		javaMailProperties.put("mail.smtp.starttls.enable", "true");
//		javaMailProperties.put("mail.smtp.auth", "true");
//		javaMailProperties.put("mail.transport.protocol", "smtp");
//		javaMailProperties.put("mail.debug", "true");
//
//		mailSender.setJavaMailProperties(javaMailProperties);
//		return mailSender;
//	}
//}
