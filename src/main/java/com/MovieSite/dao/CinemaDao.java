package com.MovieSite.dao;

import com.MovieSite.entity.Cinema;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.type.JdbcType;

import java.util.List;

public interface CinemaDao {


    @Select(value = "select * from cinema;")
    @Results(id = "BaseCinema", value = {
            @Result(id = true,column = "id",property = "id",jdbcType = JdbcType.INTEGER),
            @Result(column = "name",property = "name",jdbcType = JdbcType.VARCHAR),
            @Result(column = "address",property = "address",jdbcType = JdbcType.VARCHAR),
            @Result(column = "grade",property = "grade",jdbcType = JdbcType.VARCHAR),
            @Result(column = "text",property = "text",jdbcType = JdbcType.VARCHAR),
            @Result(column = "tel",property = "tel",jdbcType = JdbcType.VARCHAR),
            @Result(column = "img_path",property = "img_path",jdbcType = JdbcType.VARCHAR),
            @Result(column = "img_path1",property = "img_path1",jdbcType = JdbcType.VARCHAR),
            @Result(column = "img_path2",property = "img_path2",jdbcType = JdbcType.VARCHAR),
            @Result(column = "img_path3",property = "img_path3",jdbcType = JdbcType.VARCHAR),
            @Result(column = "img_path4",property = "img_path4",jdbcType = JdbcType.VARCHAR),
    })
    List<Cinema> findAll();

    @Select("select * from cinema where id = #{id};")
    @ResultMap("BaseCinema")
    Cinema findById(int id);
}
