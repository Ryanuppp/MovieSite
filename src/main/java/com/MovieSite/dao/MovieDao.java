package com.MovieSite.dao;

import com.MovieSite.entity.Movie;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.type.JdbcType;

import java.util.List;

public interface MovieDao {

    @Select(value = "select * from movieslib;")
    @Results(id = "BaseMovie",
            value = {
                    @Result(id = true,column = "id",property = "id",jdbcType = JdbcType.INTEGER),
                    @Result(column = "name",property = "name",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "category",property = "category",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "text",property = "text",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "img_path",property = "img_path",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "country",property = "country",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "duration",property = "duration",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "releaseTime",property = "releaseTime",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "actor",property = "actor",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "grade",property = "grade",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "img_path1",property = "img_path1",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "img_path2",property = "img_path2",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "img_path3",property = "img_path3",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "img_path4",property = "img_path4",jdbcType = JdbcType.VARCHAR),
            }
    )
    List<Movie> findAll();

    @Select(value = "select * from movieslib where id = #{id};")
    @ResultMap("BaseMovie")
    Movie findByID(int id);

    @Select(value = "select * from movieslib where category = #{category};")
    @ResultMap("BaseMovie")
    List<Movie> findByCategory(String category);

    @Select(value = "select * from movieslib where country = #{country};")
    @ResultMap("BaseMovie")
    List<Movie> findByCountry(String country);

    @Select(value = "select * from movieslib where name = #{name};")
    @ResultMap("BaseMovie")
    List<Movie> findByName(String name);
}
