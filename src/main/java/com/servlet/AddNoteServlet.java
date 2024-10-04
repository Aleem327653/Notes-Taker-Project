package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

public class AddNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Notes n = new Notes(title, content, new Date());

			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(n);

			tx.commit();
			s.close();

			HttpSession hs = request.getSession();
			hs.setAttribute("msg", "Notes Added Successfully");
			response.sendRedirect("AddNotes.jsp");

			return;

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}