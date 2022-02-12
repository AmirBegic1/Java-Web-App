/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author KORISNIK
 */
public class DB2 {
    private static DB2 instance;
    private static Connection con;

    private DB2() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            con = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/zadaca_DB2_161?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "admin123");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static DB2 getInstance() {
        if (instance == null) {
            instance = new DB2();
        }
 
        return instance;
    }

    public Connection getConnection() {
        return con;
    }
}
