package edu.mum.ea.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.mum.ea.model.Movie;

public interface MovieDao {
	List<Movie> listMovie();
}
