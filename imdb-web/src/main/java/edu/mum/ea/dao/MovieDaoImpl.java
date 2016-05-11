package edu.mum.ea.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.mum.ea.model.Movie;

@Repository
public class MovieDaoImpl implements MovieDao {
	@Autowired
	private SessionFactory sessionFactory;

	public List<Movie> listMovie() {
		Session session = sessionFactory.openSession();
		String hql = "FROM Movie";
		Query query = session.createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Movie> movieList = query.list();

		return movieList;
	}
}
