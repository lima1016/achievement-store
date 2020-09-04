package com.lima.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;

@ComponentScan(basePackages = "com.lima",
        excludeFilters = {@ComponentScan.Filter(type = FilterType.REGEX, pattern = "com.lima.web.*.controller")})

@EnableWeb
public class AppConfig {
}
