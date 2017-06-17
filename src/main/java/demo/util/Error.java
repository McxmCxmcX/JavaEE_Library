package demo.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by heishuai.china.cn
 * 2017/6/16 10:06
 * JavaEE_Library
 */
public class Error {
    public static void showError(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setAttribute("message", "Error.");
        response.sendRedirect("default.jsp");
    }
}