/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.DB.Util.ConnectionPool;
import com.DB.Util.DBUtil;
import com.basher.model.BasherModel;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
public class DAO_Gallery {

    PreparedStatement ps = null;
    ResultSet rs;

    public void deleteGallery_by_id(String update_id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_home = "DELETE FROM `gallery` WHERE id=?";

        try {
            ps = conn.prepareStatement(delete_home);
            ps.setString(1, update_id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void add_Gallery(BasherModel bash, Part filePart) {

        InputStream inputStream = null;

        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            try {
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            } catch (IOException ex) {
                Logger.getLogger(DAO_Gallery.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String add_home = "INSERT INTO `gallery`(`picture`, `title`, `desc`, `file_name`) VALUES (?,?,?,?)";

        try {
            ps = conn.prepareStatement(add_home);
            ps.setBlob(1, inputStream);
            ps.setString(2, bash.getTitle());
            ps.setString(3, bash.getArticle());
            ps.setString(4, bash.getFile_name());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_Gallery_by_id(BasherModel bash, String update_id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_home = "UPDATE `gallery` SET `title`=?,`desc`=? WHERE id=?";

        try {
            ps = conn.prepareStatement(update_home);
            ps.setString(1, bash.getTitle());
            ps.setString(2, bash.getArticle());
            ps.setString(3, update_id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_Gallery_by_id_with_picture(BasherModel bash, String update_id, Part filePart) {
        InputStream inputStream = null;

        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            try {
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            } catch (IOException ex) {
                Logger.getLogger(DAO_Home.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_home = "UPDATE `gallery` SET `picture`=?,`title`=?,`desc`=?,`file_name`=? WHERE id=?";

        try {
            ps = conn.prepareStatement(update_home);
            ps.setBlob(1, inputStream);
            ps.setString(2, bash.getTitle());
            ps.setString(3, bash.getArticle());
            ps.setString(4, bash.getFile_name());
            ps.setString(5, update_id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public List<BasherModel> getDetailsForGallery() throws SQLException {
        List<BasherModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT `id`, `file_name`, `title`, `desc`, `picture`, `date_modified`,  DATE_FORMAT(date_modified, '%m-%Y') as date_only_string FROM `gallery`";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel about = new BasherModel();

                about.setId(rs.getString("id"));
//                about.(rs.getTimestamp("picture"));
                about.setTitle(rs.getString("title"));
                about.setArticle(rs.getString("desc"));
                about.setDate_modified(rs.getTimestamp("date_modified"));
                about.setFile_name(rs.getString("file_name"));
                about.setDate_only_string(rs.getString("date_only_string"));
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

    public List<BasherModel> draw_Filter_ForGallery() throws SQLException {
        List<BasherModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT distinct DATE_FORMAT(date_modified, '%m-%Y') as date_only FROM `gallery` order by date_modified asc";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel about = new BasherModel();
//                about.setDate_only(rs.getDate("date_only"));
                about.setDate_only_string(rs.getString("date_only"));
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
