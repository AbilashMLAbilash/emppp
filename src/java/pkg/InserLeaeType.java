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
public class InserLeaeType {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
 {
		String sick_leave, casual_leave ,Festival,Vacation_leave ,loss_of_pay ,Birthday_leave;
		
		try
		{
			Connection con=null;
			BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
			
			
			System.out.println("Enter sick_leave :");
			sick_leave=br.readLine();
			System.out.println("Enter casual_leave :");
			casual_leave=br.readLine();
			System.out.println("Enter Festival :");
			Festival=br.readLine();
                        System.out.println("Enter Vacation_leave :");
			Vacation_leave=br.readLine();
			System.out.println("Enter loss_of_pay :");
			loss_of_pay=br.readLine();
			System.out.println("Enter Birthday_leave :");
			Birthday_leave=br.readLine();
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abilashproject","root","root");
			String str="insert into leave_type values(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(str);
			
			ps.setString(1, sick_leave);
			ps.setString(2, casual_leave);
			ps.setString(3,Festival);
                        ps.setString(4,Vacation_leave );
			ps.setString(5,loss_of_pay );
                        ps.setString(6,Birthday_leave);
			
			
			ps.executeUpdate();
			con.close();
			System.out.println("Inserted Successfully");
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
}
}

    

