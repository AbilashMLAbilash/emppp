/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.*;
/**
 *
 * @author ELCOT
 */
public class Dates_between2Dates {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
	{
		Connection con=null;
		try {
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		
		
		System.out.println("Enter the Starting Date :");
		String Trans_Date1=br.readLine();
		System.out.println("Enter the Ending Date :");
		String Trans_Date2=br.readLine();
		
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject", "root", "root");
		
		PreparedStatement ps=con.prepareStatement("Select * from leave_request where startdate between (?) and (?)");
		ps.setString(1, Trans_Date1);
		ps.setString(2, Trans_Date2);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			System.out.println("Between Dates are:"+rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getString(4)+"  "+rs.getString(5)+"  "+rs.getString(6)+"  "+rs.getString(7)+"  "+rs.getString(8)+"  "+rs.getString(9));
		}
		
		
		con.close();
		
		
		}
		catch (Exception e) {
			
		}
		
		
	}

}

