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
public class DAO_Blog {

    PreparedStatement ps = null;
    ResultSet rs;

    // String insert_blog = "INSERT INTO `blog`(`id`, `title`, `video_link`, `article`, `date_modified`) VALUES (?,?,?,?,?)";
    String update_blog = "UPDATE `blog` SET `id`=?,`title`=?,`video_link`=?,`article`=?,`date_modified`=? WHERE 1";
    String delete_blog = "DELETE FROM `blog` WHERE 1";

    public void insertBlog(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_blog = "INSERT INTO `blog`(`title`, `video_link`, `article`) VALUES (?,?,?)";

        try {
            ps = conn.prepareStatement(insert_blog);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getVideo_link());
            ps.setString(3, bm.getArticle());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void updateBlog(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_blog = "UPDATE `blog` SET `title`=?,`video_link`=?,`article`=?,`date_modified`=? WHERE `id`=?";

        try {
            ps = conn.prepareStatement(update_blog);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getVideo_link());
            ps.setString(3, bm.getArticle());
            ps.setTimestamp(4, DateUtil.getCurrentTimeStamp());
            ps.setInt(5, bm.getIndicator());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void deleteBlog(int id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_about = "DELETE FROM `blog` WHERE id =?";

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

    public List<BasherModel> getDetailsForBlog() throws SQLException {
        List<BasherModel> blogs = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM blog";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel blog = new BasherModel();

                blog.setId(rs.getString("id"));
                blog.setTitle(rs.getString("title"));
                blog.setVideo_link(rs.getString("video_link"));
                blog.setArticle(rs.getString("article"));
                blog.setDate_modified(rs.getTimestamp("date_modified"));

                blogs.add(blog);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return blogs;

    }

    public List<BasherModel> getDetailsForBlogForVideo(String title) throws SQLException {
        List<BasherModel> blogs = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT * FROM blog where title ='Story number 2'";
        String query = "SELECT * FROM `blog` WHERE title ='" + title + "'";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel blog = new BasherModel();

                blog.setId(rs.getString("id"));
                blog.setTitle(rs.getString("title"));
                blog.setVideo_link(rs.getString("video_link"));
                blog.setArticle(rs.getString("article"));
                blog.setDate_modified(rs.getTimestamp("date_modified"));

                blogs.add(blog);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return blogs;

    }

    public List<BasherModel> getDetailsForBlogForVideoFirst() throws SQLException {

        List<BasherModel> blogs = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM `blog`  limit 1";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel blog = new BasherModel();

                blog.setId(rs.getString("id"));
                blog.setTitle(rs.getString("title"));
                blog.setVideo_link(rs.getString("video_link"));
                blog.setArticle(rs.getString("article"));
                blog.setDate_modified(rs.getTimestamp("date_modified"));

                blogs.add(blog);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return blogs;

    }
}
