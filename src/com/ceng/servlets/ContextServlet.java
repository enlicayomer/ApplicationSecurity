package com.ceng.servlets;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ceng.DAO.ContextProvider;
import com.ceng.controller.ContextController;

@WebServlet("/addcontext")
public class ContextServlet extends HttpServlet {

	ContextController contextController;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		contextController = new ContextController();
		 ContextProvider contextProvider = new ContextProvider();
		String konu = req.getParameter("konu");
		String baslik = req.getParameter("baslik");
		String icerik = req.getParameter("icerik");

		contextProvider.addContext(1, baslik, icerik);
		
		resp.sendRedirect(req.getContextPath()+"/index.jsp");
	}
}
