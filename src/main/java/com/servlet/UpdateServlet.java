package com.servlet;

import java.io.IOException;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int noteId=Integer.parseInt(request.getParameter("noteId"));
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Notes note=s.get(Notes.class, noteId);
			note.setTitle(title);
			note.setContent(content);
			note.setAddDate(new Date());
			
			tx.commit();
			s.close();
			response.sendRedirect("AllNotes.jsp");
		
	}catch(Exception e) {
		e.printStackTrace();
	}

}
}