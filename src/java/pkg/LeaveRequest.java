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
public class LeaveRequest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			String str="create table leave_request(id AUTOINCREMENT,username varchar(50) not null,emailid varchar(50) not null,leavetype varchar(50) not null,startdate varchar(50) not null,enddate varchar(50) not null,totaldays varchar(50) not null,reason varchar(50) not null,leavestatus varchar(50) )";
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