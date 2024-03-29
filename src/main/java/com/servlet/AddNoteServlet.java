package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;


public class AddNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			Notes n=new Notes(title,content,new Date());
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(n);
			
			tx.commit();
			s.close();
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<center><h1> Notes Added Successfully </h1></center><br>");
			out.println("<center><h2> <a href='AllNotes.jsp'>View All Notes</a></h2> </center>");
		
	}catch(Exception e) {
		e.printStackTrace();
	}

}
}