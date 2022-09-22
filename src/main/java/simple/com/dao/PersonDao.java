package simple.com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import simple.com.dto.Person;

@Repository
public class PersonDao {

	@Autowired
	EntityManager manager;

	@Autowired
	EntityTransaction transaction;

	public Person savePerson(Person person) {
		if (validate(person.getEmailAddress(), person.getPassword()) == null) {
			transaction.begin();
			manager.persist(person);
			transaction.commit();
			return person;
		}
		return null;
	}

	public Person validate(String email, String password) {
		String q = "select p from Person p where p.email=" + email + " AND p.password=" + password;
		System.out.println(q);
		Query query = manager.createQuery(q);
		Person Persons = (Person) query.getSingleResult();
		return Persons;
	}

}