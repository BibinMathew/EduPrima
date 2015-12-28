package com.eduprime.domainmodel.domaindao;

import com.eduprime.domainmodel.entities.Person;
import com.eduprime.domainmodel.generic.GenericDao;

public interface PersonDao extends GenericDao<Person, Integer>{ 
	
	public boolean removePerson(Integer id);

}
