package edu.mum.ea.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import edu.mum.ea.dao.MovieDao;
import edu.mum.ea.model.Movie;

@Service
public class MovieServiceImpl implements MovieService {
	@Autowired
	private MovieDao movieDao;
	
	public List<Movie> listMovie() {
		return this.movieDao.listMovie();
	}
}
