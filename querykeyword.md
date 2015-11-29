```
package com.logistics.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.logistics.tables.Expressage;
import com.logitics.sql.Dao;
import com.logitics.sql.DaoImple;

@WebServlet("/QueryKeyword")
public class QueryKeyword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public QueryKeyword() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/x-json");  
	    response.setCharacterEncoding("UTF-8");  
	    response.setHeader("Cache-Control", "no-cache");  
	    String no = request.getParameter("no");
		PrintWriter out=response.getWriter();
		Dao dao = new DaoImple();
		List<Expressage> list = new ArrayList<Expressage>();
		list = dao.keyquery(no);
		JSONArray ja=new JSONArray();
		ja.put(list);
		out.println(ja.toString());
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}

```
