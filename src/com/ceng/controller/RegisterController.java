package com.ceng.controller;

import com.ceng.DAO.RegisterProvider;

public class RegisterController {

	public static final RegisterController INSTANCE=new RegisterController();
	
	
	public static RegisterController getInstance()
	{
		return INSTANCE;
	}
	
	
	public void addUser(String adSoyad,String mail,String sifre)
	{
		
		RegisterProvider registerProvider=new RegisterProvider();
		registerProvider.insertUser(adSoyad, mail, sifre);
	}
}
