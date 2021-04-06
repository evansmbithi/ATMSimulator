/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ATM;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author MAESTRO
 */
public class MySqlConnect {
    Connection conn = null;
       
    public static Connection ConnectDB(){
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/atm_db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
            return conn;
        }catch(Exception e){
           JOptionPane.showMessageDialog(null, "The server is not started, kindly contact the admin");
            return null;
        }
    }
    
}
