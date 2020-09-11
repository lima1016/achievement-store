package com.lima.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

// build.gradle: spring-context
/*
@Componentscan 어노테이션은 @Component 어노테이션 및 streotype(@Service, @Repository, @Controller.)
어노테이션이 부여된 Class들을 자동으로 Scan하여 Bean으로 등록해주는 역할을 하는 어노테이션입니다.
 */
@ComponentScan(basePackages = "com.lima",
        excludeFilters = {@ComponentScan.Filter(type = FilterType.REGEX, pattern = "com.lima.web.*.controller.*")})
// build.gradle: spring-webmvc
@EnableWebMvc // 자바 설정을 사용하여 스프링 MVC를 활성시키는 방법 (WebConfig관련)
public class AppConfig {
}
