package com.MovieSite.contorller;


import com.MovieSite.entity.User;
import com.MovieSite.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/userServlet")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public int login(@RequestBody User user){
        int login = userService.checkForUserLogin(user);
        return login;
    }

    @RequestMapping("/register")
    @ResponseBody
    public int register(@RequestBody User user){
        int register = userService.checkForUserRegister(user);
        return register;
    }

//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String name  = req.getParameter("username");
//        String password  = req.getParameter("password");
//        //String name = "ryan";
//        //String password = "123456";
//
//        PrintWriter out = resp.getWriter();
//        int i = userFacade.checkForUserLogin(name,password);
//        out.write(String.valueOf(i));
//        //out.write(name);
//        //req.getRequestDispatcher("/.jsp").forward(req,resp);
//    }
}
