package vn.edu.nlu.entity;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class ProductEntity {
    //lay ra nhung san pham tieu bieu
    public static List<Product> getTypicalProducts(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select tenSP, gia, hinhanh from sanpham where sanphamtieubieu = ?";
            s = con.prepareStatement(sql);
            s.setString(1, String.valueOf(1));
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                re.add(new Product(rs.getString("tenSP"), rs.getLong("gia"), rs.getString("hinhanh")
                ));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    //lay ra nhung san pham moi
    public static List<Product> getNewProducts(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select tenSP, gia, hinhanh from sanpham where ngaynhap >= ?";
            s = con.prepareStatement(sql);
            s.setString(1, "2020-01-20");
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                re.add(new Product(rs.getString("tenSP"), rs.getLong("gia"), rs.getString("hinhanh")
                ));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    //lay ra nhung san pham giam gia
    public static List<Product> getDiscountProducts(){
        PreparedStatement s = null;
        try {
            Product p =new Product();
            Connection con = ConnectionDB.connect();
            String sql="select tenSP, gia, hinhanh, giamgia from sanpham where giamgia > ?";
            s = con.prepareStatement(sql);
            s.setString(1, String.valueOf(0));
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                try {
                    long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
                    re.add(new Product(rs.getString("tenSP"), rs.getLong("gia"), rs.getString("hinhanh"), rs.getInt("giamgia"),priceSale
                    ));
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    //lay ra nhung san pham ban chay
    public static List<Product> getSellingProducts(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select tenSP, gia, hinhanh from sanpham where sanphambanchay = ?";
            s = con.prepareStatement(sql);
            s.setString(1, String.valueOf(1));
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                re.add(new Product(rs.getString("tenSP"), rs.getLong("gia"), rs.getString("hinhanh")
                ));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    //lay ra tat ca san pham
    public static List<Product> getAllProduct(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select tenSP, gia, hinhanh from sanpham";
            s = con.prepareStatement(sql);
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                re.add(new Product(rs.getString("tenSP"), rs.getLong("gia"), rs.getString("hinhanh")
                ));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    //lay ra nhung san pham theo thuong hieu (trademark)
    public static List<Product> getTrademark(String thuonghieu){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select tenSP, gia, hinhanh from sanpham where thuonghieu like ?";
            s = con.prepareStatement(sql);
            s.setString(1, thuonghieu);
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                re.add(new Product(rs.getString("tenSP"), rs.getLong("gia"), rs.getString("hinhanh")
                ));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    //phuong thuc tim kiem
    public static List<Product> search(String keyword){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select tenSP, gia, hinhanh from sanpham where tenSP like ?";
            s = con.prepareStatement(sql);
            s.setString(1, "%"+keyword+"%");
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                re.add(new Product(rs.getString("tenSP"), rs.getLong("gia"), rs.getString("hinhanh")
                ));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

}
