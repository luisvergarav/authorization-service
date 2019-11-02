package com.easygroup.neargrocery.AuthorizationService.domain.service;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.easygroup.neargrocery.AuthorizationService.domain.entities.Usuario;
import com.easygroup.neargrocery.AuthorizationService.domain.repository.UsuarioRepository;



/**
 *
 * @author Vass Chile
 */
@Service("usuarioService")
public class UsuarioServiceImpl extends BaseService<Usuario, String> implements UserDetailsService, UsuarioService {
 
	private UsuarioRepository<Usuario, String> usuarioRepository;

	/**
	 *
	 * @param Poliza
	 *            Repository
	 */
	@Autowired
	public UsuarioServiceImpl(UsuarioRepository<Usuario, String> polizaRepository) {
		super(polizaRepository);
		this.usuarioRepository = polizaRepository;
	}

	@Override
	public Usuario get(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return (Usuario) usuarioRepository.get(id);
	}
	@Override
	public Collection<Usuario> getAll(String id) throws Exception {
		return this.usuarioRepository.getAll(id);		
		
	}

	@Override
	public Usuario get(String id) throws Exception {
		// TODO Auto-generated method stub
		return (Usuario) usuarioRepository.get(id);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Usuario usuario = null;
		try {
			usuario = (Usuario) usuarioRepository.get(username);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(usuario == null){
			throw new UsernameNotFoundException("Invalid username or password.");
		}
		
		return new org.springframework.security.core.userdetails.User(usuario.getNick(), 
				
				usuario.getPassword(), Arrays.asList(new SimpleGrantedAuthority(usuario.getRole())));
	}
	

}
