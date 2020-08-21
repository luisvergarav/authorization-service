package com.easygroup.neargrocery.AuthorizationService.domain.repository;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.easygroup.neargrocery.AuthorizationService.domain.entities.Usuario;


/**
 *
 * @author Vass Chile
 */
@Repository("usuarioRepository")
public class InMemUsuarioRepository implements UsuarioRepository<Usuario, String> {

	private static final Logger log = Logger.getLogger(InMemUsuarioRepository.class);

	private SessionFactory sessionFactory;


    
	/**
	 * Initializep
	 * 
	 * @throws Exception
	 */
	public InMemUsuarioRepository(SessionFactory sessionFactory) throws Exception {
		this.sessionFactory = sessionFactory;
	}

	
    

	@Override
	public boolean add(Usuario entity) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(entity);
//		// TODO Auto-generated method stub
//		 EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "mysql-eclipselink" );
//	      EntityManager entitymanager = emfactory.createEntityManager( );
//	      entitymanager.getTransaction( ).begin( );
//
//	      
//	      
//	      entitymanager.persist(entity);
//	      entitymanager.getTransaction( ).commit( );
//
//	      entitymanager.close( );
//	      emfactory.close( );
	      
	      return true;

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.falabella.login.domain.repository.Repository#remove(java.lang.Object)
	 */
	@Override
	public void remove(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Usuario entity) {
//		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "mysql-eclipselink" );
//	      EntityManager entitymanager = emfactory.createEntityManager( );
//	     
	      
		Session session = this.sessionFactory.getCurrentSession();
		session.update(entity);
//		
//	      entitymanager.getTransaction( ).begin( );
//
//	      
//	      
//	      entitymanager.merge(entity);
//	      entitymanager.getTransaction( ).commit( );
//
//	      entitymanager.close( );
//	      emfactory.close( );
		
	}

	@Override
	public boolean contains(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Transactional
	@Override
	public Usuario get(String id) throws Exception {
//
//		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "mysql-eclipselink" );
//	      EntityManager entitymanager = emfactory.createEntityManager();


		Session session = this.sessionFactory.getCurrentSession();
   
		
		
//	     Usuario usuario =  session.createQuery(
//	    	        "SELECT u.idUsuario,ur.id.idUsuario FROM Usuario u , "
//	    	        + "UsuarioRole ur where u.idUsuario=ur.id.idUsuario and u.nick LIKE :nick",Usuario.class)
//	    	        .setParameter("nick", id).getSingleResult();
		 Usuario usuario =  session.createQuery(
	    	        "SELECT u FROM Usuario u  "
	    	        + " where u.nick LIKE :nick",Usuario.class)
	    	        .setParameter("nick", id).getSingleResult(); 
	     
	     
//	     entitymanager.clear();

	     
	     //Usuario usuario = (Usuario)query.getSingleResult();
	     return usuario;
	     //return this.get(usuario.getIdUsuario());
	}

	@Override
	public Collection<Usuario> getAll(String id) throws Exception {
		return null;
		

	}

	@Override
	public Usuario get(Integer id) throws Exception {
//		EntityManagerFactory emfactory = Persistence.createEntityManagerFactory( "mysql-eclipselink" );
//	      EntityManager entitymanager = emfactory.createEntityManager();

		Session session = this.sessionFactory.getCurrentSession();
		
		
		return session.find( Usuario.class, id);
	}

}
