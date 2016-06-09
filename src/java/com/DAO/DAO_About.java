/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.DB.Util.ConnectionPool;
import com.DB.Util.DBUtil;
import com.DB.Util.DateUtil;
import com.basher.model.BasherModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class DAO_About {

    PreparedStatement ps = null;
    ResultSet rs;

    public void insertAbout(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "INSERT INTO `about`( `title`, `article`) VALUES (?,?)";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getArticle());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void updateAbout(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_about = "UPDATE `about` SET `title`=?,`article`=?,`date_modified`=? WHERE id =? ";

        try {
            ps = conn.prepareStatement(update_about);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getArticle());
            ps.setTimestamp(3, DateUtil.getCurrentTimeStamp());
            ps.setInt(4, bm.getIndicator());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void deleteAbout(int id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_about = "DELETE FROM `about` WHERE id =?";

        try {
            ps = conn.prepareStatement(delete_about);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public List<BasherModel> getDetailsForAbout() throws SQLException {
        List<BasherModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM about order by id asc";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel about = new BasherModel();

                about.setId(rs.getString("id"));
                about.setTitle(rs.getString("title"));
                about.setArticle(rs.getString("article"));
                about.setDate_modified(rs.getTimestamp("date_modified"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

}
