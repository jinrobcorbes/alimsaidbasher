/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.model;

import java.sql.Blob;
import java.sql.Timestamp;
import java.util.Date;

/**
 *
 * @author user
 */
public class BasherModel {

    private String id;
    private String title;
    private String article;
    private String text;
    private String video_link;
    private String link;
    private String contact_info;
    private String desc;
    private String category;
    private Timestamp date_modified;

    private int indicator;
    private String file_name;
    private Blob picture;

    private String username;
    private String password;
    private String fname;
    private String lname;
    private String gender;

    private long file_size;
    private Date date_only;
    private String date_only_string;

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the article
     */
    public String getArticle() {
        return article;
    }

    /**
     * @param article the article to set
     */
    public void setArticle(String article) {
        this.article = article;
    }

    /**
     * @return the text
     */
    public String getText() {
        return text;
    }

    /**
     * @param text the text to set
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * @return the video_link
     */
    public String getVideo_link() {
        return video_link;
    }

    /**
     * @param video_link the video_link to set
     */
    public void setVideo_link(String video_link) {
        this.video_link = video_link;
    }

    /**
     * @return the link
     */
    public String getLink() {
        return link;
    }

    /**
     * @param link the link to set
     */
    public void setLink(String link) {
        this.link = link;
    }

    /**
     * @return the contact_info
     */
    public String getContact_info() {
        return contact_info;
    }

    /**
     * @param contact_info the contact_info to set
     */
    public void setContact_info(String contact_info) {
        this.contact_info = contact_info;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the date_modified
     */
    public Timestamp getDate_modified() {
        return date_modified;
    }

    /**
     * @param date_modified the date_modified to set
     */
    public void setDate_modified(Timestamp date_modified) {
        this.date_modified = date_modified;
    }

    /**
     * <<<<<<< HEAD
     *
     * @return the indicator
     */
    public int getIndicator() {
        return indicator;
    }

    /**
     * @param indicator the indicator to set
     */
    public void setIndicator(int indicator) {
        this.indicator = indicator;

    }

    public String getFile_name() {
        return file_name;
    }

    /**
     * @param file_name the file_name to set
     */
    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    /**
     * @return the picture
     */
    public Blob getPicture() {
        return picture;
    }

    /**
     * @param picture the picture to set
     */
    public void setPicture(Blob picture) {
        this.picture = picture;

    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the lname
     */
    public String getLname() {
        return lname;
    }

    /**
     * @param lname the lname to set
     */
    public void setLname(String lname) {
        this.lname = lname;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the file_size
     */
    public long getFile_size() {
        return file_size;
    }

    /**
     * @param file_size the file_size to set
     */
    public void setFile_size(long file_size) {
        this.file_size = file_size;
    }

    /**
     * @return the date_only
     */
    public Date getDate_only() {
        return date_only;
    }

    /**
     * @param date_only the date_only to set
     */
    public void setDate_only(Date date_only) {
        this.date_only = date_only;
    }

    /**
     * @return the date_only_string
     */
    public String getDate_only_string() {
        return date_only_string;
    }

    /**
     * @param date_only_string the date_only_string to set
     */
    public void setDate_only_string(String date_only_string) {
        this.date_only_string = date_only_string;
    }

}
