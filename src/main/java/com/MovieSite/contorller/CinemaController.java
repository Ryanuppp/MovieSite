package com.MovieSite.contorller;

import com.MovieSite.entity.Cinema;
import com.MovieSite.service.CinemaService;

import org.apache.ibatis.annotations.ResultType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/cinemaServlet")
public class CinemaController {
    @Autowired
    private CinemaService cinemaService;

    @RequestMapping(value = "/findAllCinema", method = RequestMethod.GET)
    @ResponseBody
    public List<Cinema> findAll()  {
    //int id = Integer.parseInt(req.getParameter(""));
        List<Cinema> cinemas = cinemaService.findAll();
    //        String msg = cinemaFacade.AllCinemaJson();
    //        PrintWriter out = resp.getWriter();
    //        out.write(msg);
        return cinemas;
    }

    @RequestMapping(value = "/findCinemaById", method = RequestMethod.GET)
    @ResponseBody
    public Cinema findByID(@RequestParam("id")int id){
        Cinema cinema = cinemaService.findById(id);
        return cinema;
    }

}
