package com.ceng.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ceng.db.DatabaseProvider;

public class RegisterProvider {

	private static final String REGISTER_QUERY="INSERT INTO user(user_name,user_mail,user_pass) VALUES(?,?,?)";
	
	Connection connection;
	PreparedStatement statement;
	
	public boolean insertUser(String adSoyad,String mail,String sifre)
	{

		boolean isDelegate=false;
		try{
			connection=DatabaseProvider.getConnection();
			statement=connection.prepareStatement(REGISTER_QUERY);
			statement.setString(1, adSoyad);
			statement.setString(2, mail);
			statement.setString(3, sifre);
			statement.executeUpdate();
			isDelegate=true;
		}catch (Exception e) {
		
			System.out.println("hata: "+e);
		}
		
		return isDelegate;
	
	}
}
