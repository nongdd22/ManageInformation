```
package com.logistics.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ManagerLogin")
/**
 * 管理员登录
 */
public class ManagerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ManagerLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();		
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if("admin".equals(username) && "admin".equals(password)){
			out.print(1);
		}
		else{
			out.print(0);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}

```
