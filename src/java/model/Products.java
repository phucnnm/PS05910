/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Phuc
 */
public class Products {

    public Products() {
    }

    public List<Product> showProduct(String tensp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=Assignment";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Products";
            if (tensp.length() > 0) {
                sql += " where Name like '%" + tensp + "%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString("Code");
                String image = rs.getString("Image");
                String name = rs.getString("Name");
                float price = rs.getFloat("Price");
                Product sp = new Product(code, image, name, price);
                list.add(sp);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
        //tính tổng sp
    }

    public boolean insert(String masp, String img, String tensp, float gia) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=Assignment";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "insert into Products value(?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            stm.setString(2, img);
            stm.setString(3, tensp);
            stm.setFloat(4, gia);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean update(String masp, String img, String tensp, float gia) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=Assignment";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "update Products set Image=?, Name=?, Price=?"
                    + " where Code = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, img);
            stm.setString(2, tensp);
            stm.setFloat(3, gia);
            stm.setString(4, masp);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean delete(String masp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=Assignment";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "delete from Products where Code=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, masp);
            int result = stm.executeUpdate();

            stm.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

}
