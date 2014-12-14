package com.ht.servlet;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;

public class CharacterEncodingFilter implements Filter {

private String encoding = null;

public void init(FilterConfig filterConfig) throws ServletException {
encoding = filterConfig.getInitParameter("encoding");
}

public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
request.setCharacterEncoding(encoding);
// �����ʼ���õ�URL����Ϊforward֮��request.getServletPath()�ᷢ���ı�
HttpServletRequest httpRequest = (HttpServletRequest)request;
httpRequest.getSession().setAttribute("INVOKE_ORIGINAL_URL", httpRequest.getServletPath());
filterChain.doFilter(request, response);
}

public void destroy() {
encoding = null;
}

}
