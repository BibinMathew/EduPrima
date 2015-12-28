package com.eduprime.domainmodel.generic;

import java.io.Serializable;
import java.util.List;

public interface GenericDao<E,K extends Serializable> {
    public K  add(E entity) ;
    public void saveOrUpdate(E entity) ;
    public void update(E entity) ;
    public void remove(E entity);
    public E find(K key);
    public List<E> getAll() ;
}
