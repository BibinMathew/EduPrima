package com.eduprime.domainmodel.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="EP_PERSON")
public class Person {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="PERSON_ID")
	private Integer personId;
	
	@Column(name="FIRSTNAME")
	private String firstName;
	
	@Column(name="LASTNAME")
	private String secondName;

	@Column(name="is_active")
	private char isActive;
	
	@Column(name="SEX")
	private char sex;
	
	@Column(name="CREATION_DATE")
	private Date creationDate;

	@Column(name="CREATED_BY")
	private String createdBy;
	
	@Column(name="LAST_UPDATE_DATE")
	private Date lastUpdateDate;
	
	@Column(name="LAST_UPDATE_BY")
	private String lastUpdateBy;
	
	public Integer getPersonId() {
		return personId;
	}

	public void setPersonId(Integer personId) {
		this.personId = personId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getSecondName() {
		return secondName;
	}

	public void setSecondName(String secondName) {
		this.secondName = secondName;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getLastUpdateDate() {
		return lastUpdateDate;
	}

	public void setLastUpdateDate(Date lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}

	public String getLastUpdateBy() {
		return lastUpdateBy;
	}

	public void setLastUpdateBy(String lastUpdateBy) {
		this.lastUpdateBy = lastUpdateBy;
	}
	
	public boolean isActive(){
		 return "A".equalsIgnoreCase(Character.toString(this.isActive));
	}
	
	private void setIsActive(char isActive) {
		this.isActive = isActive;
	}
	public void setActive(boolean active){
		if(active) this.setIsActive('A');
		else this.setIsActive('N');
	}

	public Person(){}
	
	
	@Override
    public String toString(){
    	return "Person [ID="+personId + "First name= " +firstName+" Second Name=" + secondName +"]";
    }
    
    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Person)) {
            return false;
        }
        Person other = (Person) obj;
        
        if (personId == null) {
            if (other.personId != null) {
                return false;
            }
        } else if (!personId.equals(other.personId)) {
            return false;
        }
        return true;
    }
}
