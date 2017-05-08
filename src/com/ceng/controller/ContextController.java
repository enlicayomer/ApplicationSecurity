package com.ceng.controller;

import com.ceng.DAO.ContextProvider;

public class ContextController {

//	public static final ContextController INSTANCE=new ContextController();
//	
	private ContextProvider contextProvider;
//
//	public ContextController getInstance()
//	{
//		return INSTANCE;
//	}
	
	
	public void addContext(int konu, String baslik, String icerik)
	{
		contextProvider=new ContextProvider();
		contextProvider.addContext(konu, baslik, icerik);
	}
}
