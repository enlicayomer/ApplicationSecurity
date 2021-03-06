package com.ceng.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ceng.controller.RegisterController;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	private RegisterController registerController;
	public RegisterServlet() {
		registerController=RegisterController.getInstance();
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String adSoyad=request.getParameter("ad_soyad");
		String mail=request.getParameter("email");
		String sifre=request.getParameter("sifre");
		String sifreTekrar=request.getParameter("sifreTekrar");
		
		registerController.addUser(adSoyad, mail, sifreTekrar);
		System.out.println(adSoyad + " "+mail+"  "+sifre+ " "+sifreTekrar);
	}
}
