package com.MovieSite.entity;

import java.io.Serializable;

public class Cinema implements Serializable {
    private static final long serialVersionUID = 1L;

    private int id;
    private String name;
    private String address;
    private String grade;
    private String text;
    private String tel;
    private String img_path;
    private String img_path1;
    private String img_path2;
    private String img_path3;
    private String img_path4;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }

    public String getImg_path1() {
        return img_path1;
    }

    public void setImg_path1(String img_path1) {
        this.img_path1 = img_path1;
    }

    public String getImg_path2() {
        return img_path2;
    }

    public void setImg_path2(String img_path2) {
        this.img_path2 = img_path2;
    }

    public String getImg_path3() {
        return img_path3;
    }

    public void setImg_path3(String img_path3) {
        this.img_path3 = img_path3;
    }

    public String getImg_path4() {
        return img_path4;
    }

    public void setImg_path4(String img_path4) {
        this.img_path4 = img_path4;
    }

    @Override
    public String toString() {
        return "Cinema{" +
                "Id=" + id +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", grade='" + grade + '\'' +
                ", text='" + text + '\'' +
                ", tel='" + tel + '\'' +
                ", img_path='" + img_path + '\'' +
                ", img_path1='" + img_path1 + '\'' +
                ", img_path2='" + img_path2 + '\'' +
                ", img_path3='" + img_path3 + '\'' +
                ", img_path4='" + img_path4 + '\'' +
                '}';
    }
}

