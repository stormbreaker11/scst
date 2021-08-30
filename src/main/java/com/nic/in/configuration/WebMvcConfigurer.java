package com.nic.in.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.nic.in" })
public class WebMvcConfigurer extends WebMvcConfigurerAdapter {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");
	}
	/*
	 * @Bean public InternalResourceViewResolver resolver() {
	 * InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	 * resolver.setViewClass(JstlView.class); resolver.setPrefix("/WEB-INF/pages/");
	 * resolver.setSuffix(".jsp"); return resolver; }
	 */

	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);

		resolver.setPrefix("/WEB-INF/pages/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	/*
	 * @Bean public TilesConfigurer tilesConfigurer() { TilesConfigurer
	 * tilesConfigurer = new TilesConfigurer(); tilesConfigurer.setDefinitions(new
	 * String[] { "/WEB-INF/tiles.xml" }); tilesConfigurer.setCheckRefresh(true);
	 * return tilesConfigurer; }
	 * 
	 * @Override public void configureViewResolvers(ViewResolverRegistry registry) {
	 * TilesViewResolver viewResolver = new TilesViewResolver();
	 * registry.viewResolver(viewResolver); }
	 * 
	 */
	/*
	 * @Bean public SimpleMappingExceptionResolver exceptionResolver() {
	 * SimpleMappingExceptionResolver exceptionResolver = new
	 * SimpleMappingExceptionResolver(); Properties exceptionMappings = new
	 * Properties(); exceptionMappings.put(
	 * "org.springframework.security.web.authentication.rememberme.CookieTheftException",
	 * "/error"); exceptionMappings.put(
	 * "org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository",
	 * "/error"); exceptionMappings.put("org.postgresql.util.PSQLException",
	 * "/error"); exceptionMappings.put(
	 * "org.springframework.jdbc.CannotGetJdbcConnectionException", "/error");
	 * exceptionMappings.put("java.net.SocketException", "/error");
	 * exceptionMappings.put("java.lang.RuntimeException", "/error");
	 * exceptionMappings.put("org.springframework.web.servlet.PageNotFound",
	 * "/error"); exceptionMappings.put(
	 * "org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver",
	 * "/error"); exceptionMappings.put("java.lang.Exception", "/error");
	 * exceptionMappings.put("java.io.IOException", "/error");
	 * exceptionResolver.setExceptionMappings(exceptionMappings);
	 * 
	 * Properties statusCodes = new Properties();
	 * 
	 * statusCodes.put("/error", "403"); statusCodes.put("/error", "404");
	 * statusCodes.put("/error", "405"); statusCodes.put("/error", "500");
	 * statusCodes.put("/error", "400");
	 * 
	 * exceptionResolver.setStatusCodes(statusCodes);
	 * 
	 * return exceptionResolver; }
	 */
}
