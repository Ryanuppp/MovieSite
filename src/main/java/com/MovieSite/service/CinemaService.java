package com.MovieSite.service;

import com.MovieSite.entity.Cinema;

import java.util.List;


public interface CinemaService {
    public List<Cinema> findAll();

    public Cinema findById(int id);
}
