package RKinfotech.Class;

import java.sql.*;

/**
 *
 * @author RK Raju Khunt
 */
public class rkConnection {
    public static Connection con = null;
    public static Connection rkConnection() {
        return rkinfotechConnection();
    }

    private static Connection ghclConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://192.161.3.87/pmsanugar", "root", "");
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://192.161.1.81/pmsanugar", "root", "");
                return con;
            } catch (ClassNotFoundException | SQLException ex) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://192.161.1.81/pmsanugar", "root", "");
                    return con;
                } catch (ClassNotFoundException | SQLException exx) {
                    javax.swing.JOptionPane.showMessageDialog(null, "Error Connection On Server :" + e.getMessage());
                    javax.swing.JOptionPane.showMessageDialog(null, "Error Connection On TKZ :" + ex.getMessage());
                    javax.swing.JOptionPane.showMessageDialog(null, "Error Connection on Ncomputing:" + exx.getMessage());
                    System.exit(0);
                }
            }
        }
        return null;
    }
    
    private static Connection rkinfotechConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/pms", "root", "RKinfotech");
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.exit(0);
        }
        return null;
    }
    
    public static Connection totalRecord(){
      try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://192.161.3.87/ghcl1", "root", "");
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://192.161.1.81/ghcl1", "root", "");
                return con;
            } catch (ClassNotFoundException | SQLException ex) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://192.161.1.81/ghcl1", "root", "");
                    return con;
                } catch (ClassNotFoundException | SQLException exx) {
                    javax.swing.JOptionPane.showMessageDialog(null, "Error Connection On Server :" + e.getMessage());
                    javax.swing.JOptionPane.showMessageDialog(null, "Error Connection On TKZ :" + ex.getMessage());
                    javax.swing.JOptionPane.showMessageDialog(null, "Error Connection on Ncomputing:" + exx.getMessage());
                    System.exit(0);
                }
            }
        }
        return null;
    }
}
