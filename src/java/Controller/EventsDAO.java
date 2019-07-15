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

import Model.Events;


/**
 *
 * @author MikyalN
 */
public class EventsDAO {
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
    
    public static int saveE(Events v) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("insert into tbl_events(namaE,imageE,altE,lokasiE,captE) values(?,?,?,?,?)");
            ps.setString(1, v.getNamaE());
            ps.setString(2, v.getImageE());
            ps.setString(3, v.getAltE());
            ps.setString(4, v.getLokasiE());
            ps.setString(5, v.getCaptE());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    public static int updateE(Events v) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("update tbl_events set namaE=?,imageE=?,altE=?,lokasiE=?,captE=? where idE=?");
            ps.setString(1, v.getNamaE());
            ps.setString(2, v.getImageE());
            ps.setString(3, v.getAltE());
            ps.setString(4, v.getLokasiE());
            ps.setString(5, v.getCaptE());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static int deleteE(Events v) {
        int status = 0;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("delete from tbl_events where idE=?");
            ps.setInt(1, v.getIdE());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    
    public static List<Events> getAllRecordsE() {
        List<Events> listE = new ArrayList<Events>();

        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_events");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Events v = new Events();
                v.setIdE(rs.getInt("idE"));
                v.setNamaE(rs.getString("namaE"));
                v.setImageE(rs.getString("imageE"));
                v.setAltE(rs.getString("altE"));
                v.setLokasiE(rs.getString("lokasiE"));
                v.setCaptE(rs.getString("captE"));
                listE.add(v);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listE;
    }
    
    public static Events getRecordByIdE(int idE) {
        Events v = null;
        try {
            conn = new DBConnection().setConnection();
            ps = conn.prepareStatement("select * from tbl_events where idE=?");
            ps.setInt(1, idE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                v.setIdE(rs.getInt("idE"));
                v.setNamaE(rs.getString("namaE"));
                v.setImageE(rs.getString("imageE"));
                v.setAltE(rs.getString("altE"));
                v.setLokasiE(rs.getString("lokasiE"));
                v.setCaptE(rs.getString("captE"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return v;
    }
    
}
