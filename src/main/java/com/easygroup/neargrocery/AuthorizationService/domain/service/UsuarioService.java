package com.easygroup.neargrocery.AuthorizationService.domain.service;



import java.util.Collection;

import com.easygroup.neargrocery.AuthorizationService.domain.entities.Usuario;





/**
 *
 * @author Vass Chile
 */
public interface UsuarioService {

	public Usuario get(Integer id) throws Exception;
	public Collection<Usuario> getAll(String id) throws Exception;
	public Usuario get(String id) throws Exception;
		
}