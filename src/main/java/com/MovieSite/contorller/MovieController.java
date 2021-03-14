package com.MovieSite.contorller;

import com.MovieSite.entity.Movie;
import com.MovieSite.service.MovieService;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.ResultType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/movieServlet")
public class MovieController {
    @Autowired
    MovieService movieService;

    @RequestMapping(value = "/findAllMovie", method = RequestMethod.GET)
    @ResponseBody
    public List<Movie> findAll(){
        List<Movie> movies = movieService.findAll();
        return movies;
    }

    @RequestMapping(value = "/findMovieById", method = RequestMethod.GET)
    @ResponseBody
    public Movie findByID(@RequestParam("id")int id){
        Movie movie = movieService.findById(id);
        return movie;
    }

    @RequestMapping(value = "/findMoviesByName", method = RequestMethod.GET)
    @ResponseBody
    public List<Movie> findByName(@RequestParam("name")String name){
        List<Movie> movies= movieService.findByType(0,name);
        return movies;
    }

    @RequestMapping(value = "/findMoviesByState", method = RequestMethod.GET)
    @ResponseBody
    public List<Movie> findByState(@RequestParam Map<String,Object>map){
        int state = Integer.parseInt((String)map.get("state"));
        String context = (String) map.get("context");
        List<Movie> movies = movieService.findByType(state, context);
        return movies;
    }

//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        //List<Movie> list = movieFacade.findAll();
//        //Movie movie = list.get(0);
//        //List<String> msg = new ArrayList<>();
//
//        String msg = movieFacade.AllMovieJson();
//        PrintWriter out = resp.getWriter();
//        out.write(msg);
//    }
}
