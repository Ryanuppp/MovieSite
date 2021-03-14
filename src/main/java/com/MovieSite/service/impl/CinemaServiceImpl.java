package com.MovieSite.service.impl;

import com.MovieSite.dao.CinemaDao;
import com.MovieSite.entity.Cinema;
import com.MovieSite.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("CinemaService")
public class CinemaServiceImpl implements CinemaService {
    @Autowired
    CinemaDao cinemaDao;
    public List<Cinema> findAll(){
        List<Cinema> cinemas = cinemaDao.findAll();
        return cinemas;
    }

    public Cinema findById(int id){
        Cinema cinema = cinemaDao.findById(id);
        return cinema;
    }
}
