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
public class Leave_Type {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			String str="create table leave_type(leave_type varchar(20),allowed varchar(20),total_allowed varchar(20),department varchar(20))";
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
