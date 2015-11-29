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

@WebServlet("/InStuff")
public class InsertStuff extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public InsertStuff() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String no = request.getParameter("no");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String phone = request.getParameter("phone");
//		System.out.println(no+name+sex+phone);
		if(!no.equals("")&&no!=null&&!name.equals("")&&name!=null&&
				!sex.equals("")&&sex!=null&&!phone.equals("")&&phone!=null){
			Dao dao = new DaoImple();
			dao.insertStuff(no, name, sex, phone);
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
