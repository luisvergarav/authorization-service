package com.easygroup.neargrocery.AuthorizationService.domain.service;

import java.util.Collection;

import com.easygroup.neargrocery.AuthorizationService.domain.entities.Entity;
import com.easygroup.neargrocery.AuthorizationService.domain.repository.Repository;



/**
 *
 * @author Vass Chile
 * @param <TE>
 * @param <T>
 */
public abstract class ReadOnlyBaseService<TE, T> {

    private Repository<TE, T> repository;

    ReadOnlyBaseService(Repository<TE, T> repository) {
        this.repository = repository;
    }
    
    public abstract Entity get(T id) throws Exception;
    public abstract Collection<TE> getAll(T t) throws Exception;
}
