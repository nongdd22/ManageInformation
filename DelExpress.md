```
package com.logistics.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.logitics.sql.Dao;
import com.logitics.sql.DaoImple;


@WebServlet("/DelExpress")
public class DelExpress extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DelExpress() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String expressageno = request.getParameter("expressageno");	
		Dao dao = new DaoImple();
		dao.delTbl(expressageno);
		response.sendRedirect("checkin.html");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}

```
