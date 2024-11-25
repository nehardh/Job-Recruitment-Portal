package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.jobDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			jobDAO dao = new jobDAO(DBConnect.getConn()); 
			boolean f = dao.deleterJob(id);
			
			HttpSession session = req.getSession();
			
			if (f) {
				session.setAttribute("succMsg", "Job Deleted Successfully !!");
				resp.sendRedirect("add_job.jsp");
			} else {
				session.setAttribute("succMsg", "Something went wrong !!");
				resp.sendRedirect("add_job.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
