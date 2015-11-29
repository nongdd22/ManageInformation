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

@WebServlet("/UpdateTbl")
public class UpdateTbl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateTbl() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String towards = request.getParameter("towards");
		String sendper = request.getParameter("sendper");
		String sendphone = request.getParameter("sendphone");
		String ps = request.getParameter("ps");
		String no = request.getParameter("no");
//		System.out.println(towards+sendper+ps+no+sendphone);
		if(!towards.equals("")&&towards!=null&&!sendper.equals("")&&sendper!=null&&
				!ps.equals("")&&ps!=null&&!no.equals("")&&ps!=null
						&&!sendphone.equals("")&&sendphone!=null){
			Dao dao = new DaoImple();
			dao.upTbl(no, towards, sendper,sendphone, ps);
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
