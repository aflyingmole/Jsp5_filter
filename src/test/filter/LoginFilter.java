package test.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/member/*")
public class LoginFilter implements Filter {
    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        // 1. 세션에 id가 존재하면 login변수에 true, id가 존재하지 않으면 false가 저장되도록 코드를 작성 하시오.
        boolean login = false;

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpSession session = request.getSession();

        if (session != null) {
            String id = (String) session.getAttribute("id");
            if (id != null) {
                login = true;
            }

            // 2. login이 true이면 요청페이지로 false이면 login페이지로 이동하도록 하시오.
            if (login == true) {
                chain.doFilter(req, resp);
            } else {
                response.sendRedirect(request.getContextPath() + "/login/login.jsp");
            }
        }
    }
}