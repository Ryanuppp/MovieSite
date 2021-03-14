package com.MovieSite.entity;

import java.io.Serializable;


public class User implements Serializable {
    private static final long serialVersionUID = 1L;


    private int id;
    private String password;
    private String username;
    private long tel;
    private String email;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public long getTel() {
        return tel;
    }

    public void setTel(long tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "userid=" + id +
                ", password='" + password + '\'' +
                ", username='" + username + '\'' +
                ", tel=" + tel +
                ", email='" + email + '\'' +
                '}';
    }
}
