package com.MovieSite.dao;

import com.MovieSite.entity.Order;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.type.JdbcType;

import java.util.List;

public interface OrderDao {


    @Select(value = "select * from order;")
    @Results(id = "BaseOrder",
            value = {
                    @Result(id = true,column = "id",property = "id",jdbcType = JdbcType.INTEGER),
                    @Result(column = "movieName",property = "movieName",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "seat",property = "seat",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "date",property = "date",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "time",property = "time",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "cinema",property = "cinema",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "hall",property = "hall",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "price",property = "price",jdbcType = JdbcType.VARCHAR),
                    @Result(column = "userId",property = "userId",jdbcType = JdbcType.INTEGER),
            }
    )
    List<Order> findAll();

    @Select(value = "select * from order where id = #{id};")
    @ResultMap("BaseOrder")
    Order findByID(int id);

    @Select(value = "select * from orders where movieName = #{movieName} and date = #{date} and time = #{time} and cinema = #{cinema} and hall=#{hall};")
    @ResultMap("BaseOrder")
    List<Order> findByArrangement(Order order);

    int findNewestID();

    @Insert("insert into orders(movieName, seat, date, time, cinema, hall, price, userID)values(#{movieName},#{seat}, #{date}, #{time}, #{cinema}, #{hall}, #{price}, #{userId});")
    @SelectKey(statement = "select last_insert_id()", keyProperty = "id", resultType = Integer.class, before = false)
    Integer addOrder(Order order);

    @Delete("delete from orders where id = #{id}")
    void deleteOrder(int id);

    @Update("update orders set(movieName, seat, date, time, cinema, hall, price) values(#{movieName}, #{seat}, #{date}, #{time}, #{cinema}, #{hall}, #{price}) where id = #{id})")
    void updateOrder(Order order);
}
