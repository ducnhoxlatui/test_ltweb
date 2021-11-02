package vn.demo.TestConection;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;

public class TestConection {
    private static final String DRIVER_JDBC = "com.mysql.cj.jdbc.Driver";
    private static final String URL_DB = "jdbc:mysql://localhost/murach_test?useSSL=false";
    // Pass and User
    private static final String USER = "root";
    private static final String PASS = "123456";

    private static Connection conn;

    public static Connection getConnection() {
        try {
            Class.forName(DRIVER_JDBC);
            conn = DriverManager.getConnection(URL_DB, USER, PASS);
        } catch (Exception e) {
            System.out.println("Error connection "+e);
        }

        return conn;
    }

        public static void main(String[] args) {
            Connection conn = getConnection();
            if(conn!=null){
                System.out.println("thanh cong");
            }
            else {
                System.out.println("khong duoc");
            }
        }
}
