/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import DB.DBConnection;
import Model.Contact;

import Model.Contact;

/**
 *
 * @author MikyalN
 */
public class ContactDAO {
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
    
    public static int save(Contact c) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("insert into tbl_contactus(namaC,emailC,subjekC,pesanC) values(?,?,?,?)");
            ps.setString(1, c.getNamaC());
            ps.setString(2, c.getEmailC());
            ps.setString(3, c.getSubjekC());
            ps.setString(4, c.getPesanC());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(Contact c) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("update tbl_contactus set namaC=?,emailC=?,subjekC=?,pesanC=? where idC=?");
            ps.setString(1, c.getNamaC());
            ps.setString(2, c.getEmailC());
            ps.setString(3, c.getSubjekC());
            ps.setString(4, c.getPesanC());
            ps.setInt(5, c.getIdC());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int delete(Contact c) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("delete from tbl_contactus where idC=?");
            ps.setInt(1, c.getIdC());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static List<Contact> getAllRecords() {
        List<Contact> list = new ArrayList<Contact>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_contactus");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Contact u = new Contact();
                u.setIdC(rs.getInt("idC"));
                u.setNamaC(rs.getString("namaC"));
                u.setEmailC(rs.getString("emailC"));
                u.setSubjekC(rs.getString("subjekC"));
                u.setPesanC(rs.getString("pesanC"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static Contact getRecordByIdD(int idC) {
        Contact u = null;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_contactus where idC=?");
            ps.setInt(1, idC);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u.setIdC(rs.getInt("idC"));
                u.setNamaC(rs.getString("namaC"));
                u.setEmailC(rs.getString("emailC"));
                u.setSubjekC(rs.getString("subjekC"));
                u.setPesanC(rs.getString("pesanC"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
}