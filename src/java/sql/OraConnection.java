/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sql;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OraConnection {
    
    public static Connection getConnection(){
        Connection conn = null;
        try{
            String nombreDriver = "oracle.jdbc.driver.OracleDriver";
            Class.forName(nombreDriver);
            String url="jdbc:oracle:thin:@localhost:1521:XE";
            String user="VSSTUDIOUSER";
            String pass="1";
            conn = DriverManager.getConnection(url,user,pass);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());   
        }catch(ClassNotFoundException e){
            System.out.println(e.getMessage());  
        }
        return conn;
    }
    
    
}
