package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.jobDAO;
import com.entity.Jobs;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class UpdateJobServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String title = req.getParameter("title");
			String location = req.getParameter("location");
			String category = req.getParameter("category");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");
			
			Jobs j = new Jobs();
			j.setId(id);
			j.setTitle(title);
			j.setLocation(location);
			j.setCategory(category);
			j.setStatus(status);
			j.setDescription(desc);
			
			jobDAO jobDao = new jobDAO(DBConnect.getConn());
			boolean f = jobDao.updateJob(j);
			
			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Job Posted Successfully !!");
				resp.sendRedirect("view_job.jsp");
			} else {
				session.setAttribute("succMsg", "Something went wrong !!");
				resp.sendRedirect("view_job.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
