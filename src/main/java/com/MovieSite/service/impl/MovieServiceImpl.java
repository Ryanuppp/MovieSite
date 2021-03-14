package com.MovieSite.service.impl;

import com.MovieSite.dao.MovieDao;
import com.MovieSite.entity.Cinema;
import com.MovieSite.entity.Movie;
import com.MovieSite.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("MovieService")
public class MovieServiceImpl implements MovieService {
    @Autowired
    MovieDao movieDao;
    public List<Movie> findAll(){
        List<Movie> movies = movieDao.findAll();
        return movies;
    }

    public Movie findById(int id){
        Movie movie = movieDao.findByID(id);
        return movie;
    }



    public List<Movie> findByType(int state,String context){
        List<Movie> movies = null;
        switch (state){
            case 0:
                movies = movieDao.findByName(context);
                break;
            case 1:
                movies = movieDao.findByCategory(context);
                break;
            case 2:
                movies = movieDao.findByCountry(context);
                break;
        }
        return movies;
    }
}
