/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg;

import pkg.DbConnector;
import java.sql.*;


/**
 *
 * @author Administrator
 */
public class UserDAO {

   // private static String CREATE_SQL = "create table user(userid varchar(50) primary key not null, password varchar(50) not null, role varchar(50) not null, name varchar(50))";
    private static String INSERT_SQL = "insert into user values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
    private static String FETCH_SQL = "select * from user where username = ?";
    private static String UPDATE_SQL ="update user set name = ?, emailid = ?, phoneno = ?, qualification = ?, role = ?, jobrole = ? ,doj = ?, address = ?, gender = ?, dob = ?, password = ? where username = ?";
    private static String DELETE_SQL = "delete from user where username = ?";
    
    // private static String UPDATE_SQL = "update user set password = ?, role = ?, name = ? where userid = ?";
    // private static String UPDATE_SQL = "update user set name = ?, emailid = ?, phoneno = ? qualification = ?, role = ?, jobrole = ? doj = ?, address = ?, gender = ? dob = ?, password = ?, confirmpassword = ? where userid = ?";
    
     private static String FETCHALL_SQL ="select * from user";
    
    private static String INSERT_SQLLR = "insert into leave_request values(? ,?, ?, ?, ?, ?, ?, ?, ?)";
    private static String FETCH_SQLLR ="select * from leave_request where name = ?";
    private static String INSERT_SQLLRAR = "insert into leave_request values(?, ?, ?, ?, ?, ?, ?)";
    private static String INSERT_SQLRDE = "insert into duty_request values(?, ?, ?, ?, ?, ?, ?,? ,?)";
    
    
    
    /*
    public static void create() throws Exception {
        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(CREATE_SQL);
            pStmt.executeUpdate();
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
    }
*/
    public static void insert(User u) throws Exception {

        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(INSERT_SQL);
            pStmt.setString(1, u.getUserId());
            pStmt.setString(2, u.getName());
            pStmt.setString(3, u.getEmailId());
            pStmt.setString(4, u.getPhoneNo());
            pStmt.setString(5, u.getQualification());
            pStmt.setString(6, u.getRole());
            pStmt.setString(7, u.getJobRole());
            pStmt.setString(8, u.getDoj());
            pStmt.setString(9, u.getAddress());
            pStmt.setString(10, u.getGender());
            pStmt.setString(11, u.getDob());
            pStmt.setString(12, u.getPassword());
            pStmt.setString(13, u.getStatus());
           // pStmt.setString(13, u.getConfirmPassword());
            pStmt.executeUpdate();
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
    }

    public static User fetch(String id) throws Exception {
        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(FETCH_SQL);
            pStmt.setString(1, id);
            ResultSet rs = pStmt.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setUserId(rs.getString(1));
                u.setPassword(rs.getString(12));
                u.setRole(rs.getString(6));
                u.setName(rs.getString(2));
                u.setEmailId(rs.getString(3));
                u.setPhoneNo(rs.getString(4));
                u.setQualification(rs.getString(5));
                u.setJobRole(rs.getString(7));
                u.setDoj(rs.getString(8));
                u.setAddress(rs.getString(9));
                u.setGender(rs.getString(10));
                u.setDob(rs.getString(11));
                return u;
            } else {
                throw new Exception("user id not found");
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
    }

    public static void update(User u) throws Exception {
        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(UPDATE_SQL);
            pStmt.setString(12, u.getUserId());
            pStmt.setString(1, u.getName());
            pStmt.setString(2, u.getEmailId());
            pStmt.setString(3, u.getPhoneNo());
            pStmt.setString(4, u.getQualification());
            pStmt.setString(5, u.getRole());
            pStmt.setString(6, u.getJobRole());
            pStmt.setString(7, u.getDoj());
            pStmt.setString(8, u.getAddress());
            pStmt.setString(9, u.getGender());
            pStmt.setString(10, u.getDob());
            pStmt.setString(11, u.getPassword());
           // pStmt.setString(12, u.getConfirmPassword());
            pStmt.executeUpdate();
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
    }
    
    
    

    public static void delete(String id) throws Exception {
        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(DELETE_SQL);
            pStmt.setString(1, id);
            pStmt.executeUpdate();
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
        
        
    }
    
    /*-----------------------------------------------------
    -----------------------------
    -----------------------------------------
    */
    public static void insertlr(User u) throws Exception {

        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(INSERT_SQLLR);
            pStmt.setString(1, u.getId());
            pStmt.setString(2, u.getName());
            pStmt.setString(3, u.getEmailId());
            pStmt.setString(4, u.getLeaveType());
            pStmt.setString(5, u.getStartDate());
            pStmt.setString(6, u.getEndDate());
            pStmt.setString(7, u.getTotalDays());
            pStmt.setString(8, u.getReason());
            pStmt.setString(9, u.getRequestStatus());
            
            pStmt.executeUpdate();
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
    }
    
    
    /*
    -------------------------------------------------------
    
    */
    
    public static User fetchlr(String name) throws Exception {
        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(FETCH_SQLLR);
            pStmt.setString(1, name);
            ResultSet rs = pStmt.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setUserName(rs.getString(1));
                u.setEmailId(rs.getString(2));
                u.setLeaveType(rs.getString(3));
                u.setStartDate(rs.getString(4));
                u.setEndDate(rs.getString(5));
                u.setTotalDays(rs.getString(6));
                u.setReason(rs.getString(7));
                u.setRequestStatus(rs.getString(8));
                
                return u;
            } else {
                throw new Exception("user id not found");
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
    }
    
    /*
    ---------------------------------------------------------------
    -------------------------------------
    */
    public static void insertlrar(User u) throws Exception {

        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(INSERT_SQLLRAR);
            pStmt.setString(1, u.getName());
            pStmt.setString(2, u.getEmailId());
            pStmt.setString(3, u.getLeaveType());
            pStmt.setString(4, u.getStartDate());
            pStmt.setString(5, u.getEndDate());
            pStmt.setString(6, u.getTotalDays());
            pStmt.setString(7, u.getReason());
            pStmt.setString(8, u.getRequestStatus());
            
            pStmt.executeUpdate();
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
    }
    
    
    public static void insertrde(User u) throws Exception {

        Connection con = null;
        PreparedStatement pStmt = null;
        try {
            con = DbConnector.getConnection();
            pStmt = con.prepareStatement(INSERT_SQLRDE);
           pStmt.setString(1, u.getId());
            pStmt.setString(2, u.getName());
            pStmt.setString(3, u.getEmailId());
            pStmt.setString(4, u.getAppliedDate());
            pStmt.setString(5, u.getDate());
            pStmt.setString(6, u.getStartTime());
            pStmt.setString(7, u.getEndTime());
            pStmt.setString(8, u.getDutyType());
            pStmt.setString(9, u.getDutyStatus());
            
            pStmt.executeUpdate();
        } catch (Exception ex) {
            throw ex;
        } finally {
            pStmt.close();
            con.close();
        }
    }
    
    
    
    

    
    
    
}
