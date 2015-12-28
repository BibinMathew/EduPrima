package com.eduprime.domainmodel.domaindao;


import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.eduprime.domainmodel.entities.Person;
import com.eduprime.domainmodel.generic.GenericDaoImpl;


@Repository
public class PersonDaoImpl extends  GenericDaoImpl<Person, Integer> implements PersonDao {

	
	@Override
	public boolean removePerson(Integer id) {
		// TODO Auto-generated method stub
		 Query employeeTaskQuery = currentSession().createQuery(
	                "update person set is_active = 'N' where PERSON_ID = :id");
	        employeeTaskQuery.setParameter("id", id);
	        return employeeTaskQuery.executeUpdate() > 0;
	}

}
