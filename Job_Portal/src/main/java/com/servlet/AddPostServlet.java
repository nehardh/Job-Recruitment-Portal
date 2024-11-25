
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

@WebServlet("/add_job")
public class AddPostServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { // Get
																													// data
																													// from
																													// the
																													// form
		String title = req.getParameter("title");
		String location = req.getParameter("location");
		String category = req.getParameter("Category");
		String status = req.getParameter("Status");
		String description = req.getParameter("desc");

		// Create a Job object and set its properties
		Jobs job = new Jobs();
		job.setTitle(title);
		job.setLocation(location);
		job.setStatus(status);
		job.setDescription(description);
		job.setCategory(category);

		jobDAO jobDao = new jobDAO(DBConnect.getConn());
		boolean f = jobDao.AddJobs(job);
		
		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("succMsg", "Job Posted Successfully !!");
			resp.sendRedirect("add_job.jsp");
		} else {
			session.setAttribute("succMsg", "Something went wrong !!");
			resp.sendRedirect("add_job.jsp");
		}
	}
}
