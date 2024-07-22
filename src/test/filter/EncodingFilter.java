package test.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/*")
public class EncodingFilter implements Filter {
    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        System.out.println("Encoding Filter Complete");
        req.setCharacterEncoding("UTF-8");

        //다음에 수행할 필터를 호출하고 필터가 없으면 사용자가 요청한 페이지로 이동한다.
        chain.doFilter(req, resp);
    }
}
