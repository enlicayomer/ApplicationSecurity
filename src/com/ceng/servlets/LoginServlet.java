package com.ceng.servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ceng.DAO.LoginProvider;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String mail=req.getParameter("mail");
		String sifre=req.getParameter("sifre");
		System.out.println(mail+" "+sifre);
		ServletContext context=req.getServletContext();
		LoginProvider loginProvider=new LoginProvider();
		if(loginProvider.loginDelegate(mail, sifre))
		{
			context.setAttribute("isLogin", "true");
		}else
			context.setAttribute("isLogin", "false");
				
		resp.sendRedirect("index.jsp");
	}
	
}
