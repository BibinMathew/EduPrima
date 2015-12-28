package com.eduprime.domainmodel.mainclass;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.eduprime.domainmodel.domainservice.PersonService;
import com.eduprime.domainmodel.entities.Person;

public class MainTestRunner {


	
	
	public static void main(String[] args) {
	
		
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Person pers = new Person();
		
		pers.setFirstName("SAM");
		pers.setSecondName("Brown");
		pers.setSex('M');
		pers.setActive(true);
		
		 PersonService personService = (PersonService)applicationContext.getBean("personService");
          int myId = personService.add(pers);
          Person getPerson = personService.get(myId);
          System.out.println(getPerson);
		
		
	}
	 
}
