/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg;
import java.sql.*;
/**
 *
 * @author ELCOT
 */
public class Create {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			String str="create table user(username varchar(50) primary key not null,name varchar(50) not null,emailid varchar(50) not null,phoneno varchar(50) not null,Qualification varchar(50) not null,role varchar(50) not null,jobrole varchar(50) not null,doj varchar(50) not null,address varchar(50) not null,gender varchar(50) not null,dob varchar(50) not null, password varchar(50) not null, status varchar(50))";
			PreparedStatement ps=con.prepareStatement(str);
			ps.executeUpdate();
                        System.out.println("Successfully Created");
			}
	catch(Exception e)
			{
			e.getStackTrace();
			}
    }
    
}
