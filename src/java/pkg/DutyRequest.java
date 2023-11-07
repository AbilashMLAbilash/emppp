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
public class DutyRequest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			String str="create table duty_request(username varchar(50),emailid varchar(50),applieddate varchar(50),startdate varchar(50),enddate varchar(50),dutytype varchar(50),reason varchar(50),dutystatus varchar(50) )";
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
