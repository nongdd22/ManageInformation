```
package com.logistics.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.logitics.sql.Dao;
import com.logitics.sql.DaoImple;

@WebServlet("/UpdateOut")
public class UpdateOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateOut() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String outtime = request.getParameter("outtime");
		String no = request.getParameter("no");
		System.out.println(no+outtime);
		if(!outtime.equals("")&&outtime!=null&&!no.equals("")&&no!=null){
			Dao dao = new DaoImple();
			dao.upOut(no, outtime);
			out.print(1);
		}else{
			out.print(0);
		}
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}

```
