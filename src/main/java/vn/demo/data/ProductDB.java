package vn.demo.data;

import java.sql.*;
import java.util.ArrayList;

import vn.demo.business.Product;

public class ProductDB {
    public static Product selectProduct(String code){
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM product " + "WHERE code = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, code);
            rs = ps.executeQuery();
            Product product = null;
            if (rs.next()) {
                product = new Product();
                product.setCode(rs.getString("Code"));
                product.setPrice(rs.getInt("Price"));
                product.setDescription(rs.getString("Description"));
            }
            return product;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    public static ArrayList<Product> getProducts()
    {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM Product";
        ArrayList<Product> products = new ArrayList<>();
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                String code = rs.getString("Code");
                String description = rs.getString("Description");
                int price = rs.getInt("Price");

                Product p = new Product(code,description,price);
                products.add(p);
            }
            return products;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }

    }
}
