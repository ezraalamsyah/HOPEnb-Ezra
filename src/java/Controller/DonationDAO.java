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

import Model.Donation;

/**
 *
 * @author MikyalN
 */
public class DonationDAO {
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
    
    public static int save(Donation d) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("insert into tbl_donasi(namaD,emailD,jumlahD,metodeD,pesanD) values(?,?,?,?,?)");
            
            if ("on".equals(d.getAnonD())){
                ps.setString(1, "Hamba Allah (Anonymous)");
                ps.setString(2, d.getEmailD());
                ps.setInt(3, d.getJumlahD());
                ps.setString(4, d.getMetodeD());
                ps.setString(5, d.getPesanD());
            }            
            else {
                ps.setString(1, d.getNamaD());
                ps.setString(2, d.getEmailD());
                ps.setInt(3, d.getJumlahD());
                ps.setString(4, d.getMetodeD());
                ps.setString(5, d.getPesanD());
            }
            
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int update(Donation d) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("update tbl_donasi set namaD=?,emailD=?,jumlahD=?,metodeD=?,pesanD=? where idD=?");
            ps.setString(1, d.getNamaD());
            ps.setString(2, d.getEmailD());
            ps.setInt(3, d.getJumlahD());
            ps.setString(4, d.getMetodeD());
            ps.setString(5, d.getPesanD());
            ps.setInt(6, d.getIdD());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int delete(Donation d) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("delete from tbl_donasi where idD=?");
            ps.setInt(1, d.getIdD());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static List<Donation> getAllRecords() {
        List<Donation> list = new ArrayList<Donation>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_donasi");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Donation u = new Donation();
                u.setIdD(rs.getInt("idD"));
                u.setNamaD(rs.getString("namaD"));
                u.setEmailD(rs.getString("emailD"));
                u.setJumlahD(rs.getInt("jumlahD"));
                u.setMetodeD(rs.getString("metodeD"));
                u.setPesanD(rs.getString("pesanD"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static List<Donation> getReversedAllRecords() {
        List<Donation> list = new ArrayList<Donation>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_donasi ORDER BY idD DESC");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Donation u = new Donation();
                u.setIdD(rs.getInt("idD"));
                u.setNamaD(rs.getString("namaD"));
                u.setEmailD(rs.getString("emailD"));
                u.setJumlahD(rs.getInt("jumlahD"));
                u.setMetodeD(rs.getString("metodeD"));
                u.setPesanD(rs.getString("pesanD"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    
    public static Donation getRecordByIdD(int idD) {
        Donation u = null;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_donasi where idD=?");
            ps.setInt(1, idD);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u.setIdD(rs.getInt("idD"));
                u.setNamaD(rs.getString("namaD"));
                u.setEmailD(rs.getString("emailD"));
                u.setJumlahD(rs.getInt("jumlahD"));
                u.setMetodeD(rs.getString("metodeD"));
                u.setPesanD(rs.getString("pesanD"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
    
    public static int getTotalDonations() {
        int total = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("SELECT SUM(jumlahD) from tbl_donasi");
            ResultSet rs = ps.executeQuery();
            rs.next();
            total = rs.getInt(1);
        } catch (Exception e) {
            System.out.println(e);
        }
        return total;
    }
}
