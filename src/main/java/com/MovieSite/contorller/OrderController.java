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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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

    @RequestMapping("/UpdateOrder")
    public void updateOrder(@RequestBody Order order){
        orderService.updateOrder(order);
    }

//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//
//        //用来处理乱码问题
//        MyDecoder decoder = new MyDecoder();
//        resp.setContentType("application/json; charset=utf-8");
//        resp.setHeader("cache-control", "no-cache");
//        int userID = Integer.parseInt("1");
//        String price = req.getParameter("cost");
//        String seat = decoder.split(req.getParameter("sits"));
//        String date_ = req.getParameter("date");
//        String time_ = req.getParameter("time");
//        String movieName = decoder.replace(req.getParameter("movie"));
//        String cinema = decoder.replace(req.getParameter("cinema"));
//        String hall = "56";
//
//        /*
//        int userID = 1;
//        String seat = "F22";
//        String price = "10";
//        String date_ = "...";
//        String time_ = "...";
//        String movieName ="...";
//        String cinema ="...";
//        String hall = "5";*/
//        try{
//
//            int ticketID = orderFacade.addOrder(movieName,seat,date_,time_,cinema,hall
//            ,price,userID);
//            PrintWriter out = resp.getWriter();
//            out.write(cinema);
//            req.getSession().setAttribute("Order",ticketID);
//        }catch (Exception e){
//            throw new EJBException(e.getMessage());
//        }
//    }

}
