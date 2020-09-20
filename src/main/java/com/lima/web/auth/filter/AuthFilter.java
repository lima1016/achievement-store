package com.lima.web.auth.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthFilter implements Filter {

    String[] path;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // web.xml에 설정된 초기화 파라미터 값을 가져옴.
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;

        String servletPath = httpServletRequest.getServletPath();
        String pathInfo = httpServletRequest.getPathInfo();

        System.out.println("servletPath 이건뭘까?@@@@@@@@ = " + servletPath);
        System.out.println("pathInfo 이건또 뭘까? @@@@@@@ = " + pathInfo);

        for (String p: path) {
            // web.xml에 지정된 경로라면 로그인 여부를 검사함.
            if (pathInfo.endsWith(p)){
                if (httpServletRequest.getSession().getAttribute("loginUser") == null) {
                    // 로그인 하지 않았다면 로그인 폼으로 보냄.
                    httpServletResponse.sendRedirect("../member/signUpForm");
                    return;
                } else {
                    //로그인 했다면 반복문 멈추고, 다음 목적지로 보냄.
                    break;
                }
            }
        }
        // 로그인 했다면 원래의 목적지로 보냄.
        chain.doFilter(request, response);
    }
}
