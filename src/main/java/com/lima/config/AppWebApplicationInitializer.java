package com.lima.config;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import javax.servlet.Filter;

/*
 https://logical-code.tistory.com/94
 - AbstractAnnotationConfigDispatcherServletInitializer을 이용해
   DispatcherServlet을 설정하는 것은 web.xml 파일을 이용해 설정했더 걸과 동일한 기능.
 - getRootConfigClasses()에서 리턴된 @Configuration  클래스들은 ContextLoaderListener가 생성한 애플리케이션
   컨텍스트를 설정하는데 사용된다.
 - getServletConfigClasses()에서 리턴된 @Configuration 클래스들은 DispatcherServlet의
   애플리케이션 컨텍스트에 대한 빈들을 정의한다.
 */

// build.gradle: extends한후로 javax.servlet-api이거 안쓰니까 gradle이 안됨.
public class AppWebApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[] {AppConfig.class, DatabaseConfig.class, MybatisConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class<?>[] {WebConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[] {"/"};
    }

    // build.gradle: javax.annotation-api
    @Override
    protected Filter[] getServletFilters() {
        return new Filter[] { new CharacterEncodingFilter("UTF-8")};
    }

}
