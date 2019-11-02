package com.easygroup.neargrocery.AuthorizationService.domain.repository;







/**
 *
 * @author VassChile
 */
public interface UsuarioRepository<Usuario, String> extends Repository<Usuario, String> {

    
 
	public Usuario get(Integer id) throws Exception;
}
