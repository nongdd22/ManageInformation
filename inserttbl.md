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

/**
 * 向数据库插入信息
 */
@WebServlet("/InsertTbl")
public class InsertTbl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertTbl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String receper = request.getParameter("receper");
		String recephone = request.getParameter("recephone");
		String receposi = request.getParameter("receposi");
		String Calendar = request.getParameter("Calendar");
		String corporate = request.getParameter("corporate");
		String expressageno = request.getParameter("expressageno");
		String no = request.getParameter("no");
		String state = request.getParameter("state");
		if(state.equals("")||state==null){
			state = "ok";
		}
		System.out.println(state);
		if(!receper.equals("")&&!recephone.equals("")&&!receposi.equals("")
			&&!Calendar.equals("")&&!corporate.equals("")&&!expressageno.equals("")
			&&!no.equals("")){
			String towards = "";
			Dao dao = new DaoImple();
			dao.insertExpressage(receper, recephone, receposi, Calendar, corporate, expressageno, no, towards, state);
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
