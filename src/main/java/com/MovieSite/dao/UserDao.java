package com.MovieSite.dao;

import com.MovieSite.entity.User;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

import java.util.List;

public interface UserDao {


    @Select(value = "select * from userlib;")
    @Results(id = "BaseUser",
            value = {
                    @Result(id = true,column = "id",property = "id",jdbcType = JdbcType.INTEGER),
                    @Result(column = "username",property = "username",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "password",property = "password",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "tel",property = "tel",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "email",property = "email",jdbcType = JdbcType.VARCHAR),
            }
    )
    List<User> findAll();

    @Select(value = "select * from userlib where id = #{id};")
    @ResultMap("BaseUser")
    User findByID(int id);

    @Select(value = "select * from userlib where username = #{username};")
    @ResultMap("BaseUser")
    User findByUsername(String username);

    @Insert(value = "insert into userlib(username,password,tel,email) values(#{username},#{password},#{tel},#{email})")
    void addUser(User user);
}
