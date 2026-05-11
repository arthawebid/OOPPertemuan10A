package javaform;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author INSTIKI
 */
public class dbkoneksi {
    static String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
    static String DB_USER = "root";
    static String DB_PASS = "";
    static String DB_HOST = "jdbc:mysql://localhost:3306/instiki";
    
    public static Connection koneksi(){
        try{
           Class.forName(DB_DRIVER);
           return DriverManager.getConnection(DB_HOST,DB_USER,DB_PASS);
           
        }catch(ClassNotFoundException | SQLException err){
            System.out.println("Gagal Koneksi");
        }
        
        return null;
    }
    
}
