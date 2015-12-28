package com.eduprime.domainmodel.domainservice;

import com.eduprime.domainmodel.entities.Person;
import com.eduprime.domainmodel.generic.GenericService;



public interface PersonService extends GenericService<Person,Integer>{
    public boolean removePerson(Integer id);
}
