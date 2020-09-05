package com.lima.config;

import org.mybatis.spring.annotation.MapperScan;


// build.gradle: MyBatis-Spring
@MapperScan("com.lima.web.*.dao")
public class MybatisConfig {

//    @Bean
//    public SqlSessionFactory sqlSessionFactory(
//            DataSource dataSource, ApplicationContext appCtx) throws Exception {
//
//        // Mybatis의 Log4j2를 활성화시키기
//        LogFactory.useLog4J2Logging();
//
//        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
//        sqlSessionFactoryBean.setDataSource(dataSource);
//        sqlSessionFactoryBean.setTypeAliasesPackage("com.lima.web.*.domain");
//        sqlSessionFactoryBean.setMapperLocations(
//                appCtx.getResource("classpath:mapper/*Mapper.xml"));
//        return sqlSessionFactoryBean.getObject();
//    }
}
