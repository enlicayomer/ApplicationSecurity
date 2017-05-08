package com.ceng.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ceng.db.DatabaseProvider;

public class LoginProvider {

	private static final String SELECT_USER="SELECT * FROM user where user_mail=? and user_pass=?";
	
	Connection connection;
	PreparedStatement statement;
	public boolean loginDelegate(String mail, String sifre)
	{
		boolean isDelegate=false;
		try{
			connection=DatabaseProvider.getConnection();
			statement=connection.prepareStatement(SELECT_USER);
			statement.setString(1, mail);
			statement.setString(2, sifre);
			try(ResultSet resultSet=statement.executeQuery())
			{
				if(resultSet.next())
					isDelegate=true;
			}
			
		}catch (Exception e) {
		
			System.out.println("hata: "+e);
		}
		
		return isDelegate;
	}
}
