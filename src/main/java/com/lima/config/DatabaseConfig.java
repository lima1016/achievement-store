package com.lima.config;

import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

// build.gradle: Spring JDBC
@EnableTransactionManagement
// build.gradle: spring-context
@PropertySource("classpath:conf/jdbc.properties")
public class DatabaseConfig {
//
//    @Value("${jdbc.driver}") String jdbcDriver;
//
//    @Value("${jdbc.url}") String jdbcUrl;
//
//    @Value("${jdbc.username}") String jdbcUsername;
//
//    @Value("${jdbc.password}") String jdbcPassword;
//
//    @Bean
//    public DataSource dataSource() {
//        DriverManagerDataSource ds = new DriverManagerDataSource();
//        ds.setDriverClassName(this.jdbcDriver);
//        ds.setUrl(this.jdbcUrl);
//        ds.setUsername(this.jdbcUsername);
//        ds.setPassword(this.jdbcPassword);
//        return ds;
//    }
//
//    @Bean
//    public PlatformTransactionManager transactionManager(DataSource dataSource) {
//        return new DataSourceTransactionManager(dataSource);
//    }
}
