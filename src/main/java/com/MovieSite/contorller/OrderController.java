package com.MovieSite.contorller;

import com.MovieSite.entity.Arrangement;
import com.MovieSite.entity.Order;
import com.MovieSite.entity.User;
import com.MovieSite.service.OrderService;
import com.MovieSite.service.UserService;

import org.apache.ibatis.annotations.ResultType;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/orderServlet")
public class OrderController {

    @Autowired
    OrderService orderService;
    @Autowired
    UserService userService;

    @RequestMapping("/addOrder")
    @ResponseBody
    public int addOrder(@RequestBody Order order){
        int index = orderService.addOrder(order);
        return index;
    }

    @RequestMapping("/deleteOrder")
    @ResponseBody
    public void deleteOrder(@RequestParam("id") int id){
        orderService.deleteOrder(id);
    }

    /*检查已有座位*/
    @RequestMapping("/detectSeat")
    @ResponseBody
    public String detectSeat(@RequestBody() Order order){
        System.out.println(order.toString());
        String orders = orderService.getArrSeat(order);
        return orders;
    }

    @RequestMapping("/findOrderById")
    @ResponseBody
    @ResultType(Order.class)
    public Order selectOrderByID(@RequestParam("id")int id){
        Order order = orderService.findById(id);
        return order;
    }

}
