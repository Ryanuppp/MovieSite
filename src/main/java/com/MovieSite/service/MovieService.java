package com.MovieSite.service;

import com.MovieSite.entity.Cinema;
import com.MovieSite.entity.Movie;

import java.lang.management.MonitorInfo;
import java.util.List;

public interface MovieService {
    public List<Movie> findAll();

    public Movie findById(int id);

    public List<Movie>  findByType(int state,String context);
}
