package com.servlet;

import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/apply_job")
public class ApplyJobServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int jobId = Integer.parseInt(req.getParameter("id"));

        try (Connection conn = DBConnect.getConn()) {
            String query = "INSERT INTO applications (job_id) VALUES (?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, jobId);
            stmt.executeUpdate();
            resp.sendRedirect("list_jobs.jsp"); // Redirect to jobs list after applying
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to apply for job");
        }
    }
}
