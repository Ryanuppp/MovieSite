package com.MovieSite.entity;

import java.io.Serializable;


public class Movie implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String name;
    private String category;
    private String text;
    private String img_path;
    private String country;
    private String duration;
    private String releaseTime;
    private String actor;
    private String grade;
    private String img_path1;
    private String img_path2;
    private String img_path3;
    private String img_path4;

    public void setImg_path1(String img_path1) {
        this.img_path1 = img_path1;
    }

    public void setImg_path2(String img_path2) {
        this.img_path2 = img_path2;
    }

    public void setImg_path3(String img_path3) {
        this.img_path3 = img_path3;
    }

    public void setImg_path4(String img_path4) {
        this.img_path4 = img_path4;
    }

    public String getImg_path1() {
        return img_path1;
    }

    public String getImg_path2() {
        return img_path2;
    }

    public String getImg_path3() {
        return img_path3;
    }

    public String getImg_path4() {
        return img_path4;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public void setReleaseTime(String releaseTime) {
        this.releaseTime = releaseTime;
    }

    public String getDuration() {
        return duration;
    }

    public String getReleaseTime() {
        return releaseTime;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public String getText() {
        return text;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        name = name;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }

    public String getActor() { return actor; }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getGrade() {
        return grade;
    }

    public void setActor(String actor) { this.actor = actor; }

    @Override
    public String toString() {
        return "Movie{" +
                "Id=" + id +
                ", Name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", Text='" + text + '\'' +
                ", img_path='" + img_path + '\'' +
                ", country='" + country + '\'' +
                ", duration='" + duration + '\'' +
                ", releaseTime='" + releaseTime + '\'' +
                ", actor='" + actor + '\'' +
                ", grade='" + grade + '\'' +
                ", img_path1='" + img_path1 + '\'' +
                ", img_path2='" + img_path2 + '\'' +
                ", img_path3='" + img_path3 + '\'' +
                ", img_path4='" + img_path4 + '\'' +
                '}';
    }
}
