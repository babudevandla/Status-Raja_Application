package com.statusraja.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
public class WebConfig extends WebMvcConfigurerAdapter {

	 @Override
	  public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        registry.addResourceHandler(
	                "/image/**",
	                "/picture/**",
	                "/css/**",
	                "/js/**",
	                "/fonts/**",
	                "/img/**",
	                "/uikit/**")
	                .addResourceLocations(
	                        "classpath:/static/image/",
	                        "classpath:/static/picture/",
	                        "classpath:/static/css/",
	                        "classpath:/static/js/",
	                        "classpath:/static/fonts/",
	                        "classpath:/static/img/",
	                        "classpath:/static/uikit/");
	    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        resolver.setViewClass(JstlView.class);
        registry.viewResolver(resolver);
    }
}