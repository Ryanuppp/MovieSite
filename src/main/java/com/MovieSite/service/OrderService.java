package com.MovieSite.service;

import com.MovieSite.entity.Cinema;
import com.MovieSite.entity.Order;

import java.util.List;

public interface OrderService {
    public List<Order> findAll();

    public Order findById(int id);

    public int addOrder(Order order);

    public String getArrSeat(Order order);

    public void deleteOrder(int id);

    public void updateOrder(Order order);
}
