package com.eduprime.domainmodel.generic;

import java.io.Serializable;
import java.util.List;

public interface GenericService<E, K extends Serializable> {
    public void saveOrUpdate(E entity);
    public List<E> getAll();
    public E get(K id);
    public K add(E entity);
    public void update(E entity);
    public void remove(E entity);
}