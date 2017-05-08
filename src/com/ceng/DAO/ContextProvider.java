package com.ceng.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ceng.db.DatabaseProvider;

public class ContextProvider {

	private static final String INSERT_CONTEXT="INSERT INTO icerikler(konuId,icerikBaslik,icerik,userId) values(?,?,?,?)";
	
	public static final ContextProvider INSTANCE=new ContextProvider();
	
	public ContextProvider getContextProvider()
	{
		return INSTANCE;
	}
	Connection connection;
	PreparedStatement statement;
	public void addContext(int konu, String baslik, String icerik)
	{
		
		try{
			connection=DatabaseProvider.getConnection();
			statement=connection.prepareStatement(INSERT_CONTEXT);
			statement.setInt(1, 1);
			statement.setString(2, baslik);
			statement.setString(3, icerik);
			statement.setInt(4, 1);
			statement.executeUpdate();
			
		}catch(Exception e)
		{
			System.out.println("hata: "+e);
		}
	}
}
