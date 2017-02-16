package com.DBconnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DB_insert1 extends DB_connection 
{
	
	
	
	public  insert(String firstname, String lastname, int phoneno, String email,String password) throws SQLException
	{
		PreparedStatement pt;
					pt = super.conn
			.prepareStatement("insert into tbl_user(vchr_firstname, vchr_lastname,int_phoneno,vchr_email,vchr_password)values(?,?,?,?,?)");
			pt.setString(1,firstname);
			pt.setString(2,lastname);
			pt.setInt(3,phoneno);
			pt.setString(4,email);
			pt.setString(5,password);
			pt.execute();
			//pt.getUsername();
			
			System.out.println("inserted");
			return y;
			
			
				
		
		}
	public int select(String mail, String pwd)
	{
		PreparedStatement pt1;
		try {
			pt1 = super.conn
			
		.prepareStatement("call face(?,?)");
			pt1.setString(1, mail);
			pt1.setString(2, pwd);
			ResultSet rs = pt1.executeQuery();
            while(rs.next())
            {
                     String email=rs.getString("vchr_email");
                     String password=rs.getString("vchr_password");
                     System.out.println("email:"+email + "pwd:"+password);
            }
				pt1.execute();
			System.out.println("selected");
		}
		catch (SQLException e) {
			e.printStackTrace();
			System.out.println("not inserted");
		}
		return 1;
		
	}
	


		
	
	public static void main(String[] args)
	{
		DB_insert1 db=new DB_insert1();
		System.out.println(db);
		db.insert("appuz", "ms", 156845, "appuz@gmail.com","appu123");
		db.select("abc@gmail.com","abc123");
		

		
		
		
	}
	
	
	
	
	
	
}
