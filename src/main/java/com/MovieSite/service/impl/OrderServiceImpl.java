package com.MovieSite.service.impl;

import com.MovieSite.dao.OrderDao;
import com.MovieSite.entity.Cinema;
import com.MovieSite.entity.Order;
import com.MovieSite.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("OrderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderDao orderDao;
    public List<Order> findAll(){
        List<Order> orders= orderDao.findAll();
        return orders;
    }

    public Order findById(int id){
        Order order = orderDao.findByID(id);
        return order;
    }

    public int addOrder(Order order){
         orderDao.addOrder(order);
         return order.getId();
    }

    public String getArrSeat(Order order){
        List<Order> orders = orderDao.findByArrangement(order);
        String seats = "";
        for(int i = 0;i<orders.size();i++){
            String seat = orders.get(i).getSeat();
            seats += seat;
            if(!(i == orders.size()-1)){
                seats += ",";
            }
        }
        return seats;
    }


    public void deleteOrder(int id){
        orderDao.deleteOrder(id);
    }

    public void updateOrder(Order order){
        orderDao.updateOrder(order);
    }
}
