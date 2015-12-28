package com.eduprime.domainmodel.domainservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.eduprime.domainmodel.domaindao.PersonDao;
import com.eduprime.domainmodel.entities.Person;
import com.eduprime.domainmodel.generic.GenericDao;
import com.eduprime.domainmodel.generic.GenericServiceImpl;


@Service("personService")
public class PersonServiceImpl extends GenericServiceImpl<Person, Integer> implements PersonService {

	private PersonDao personDao;
    public PersonServiceImpl(){
 
    }
    @Autowired
    public PersonServiceImpl(
            @Qualifier("personDaoImpl") GenericDao<Person, Integer> genericDao) {
        super(genericDao);
        this.personDao = (PersonDao) genericDao;
    }
 
	
    
    @Transactional(propagation = Propagation.REQUIRED)
	@Override
	public boolean removePerson(Integer id) {
		// TODO Auto-generated method stub
		return personDao.removePerson(id);
	}
	
}
