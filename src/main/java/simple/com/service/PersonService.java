package simple.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import simple.com.Exception.NoIdFoundException;
import simple.com.dao.PersonDao;
import simple.com.dto.Person;

@Service
public class PersonService {
	@Autowired
	PersonDao dao;

	public Person savePerson(Person product) {
		Person p = dao.savePerson(product);
		if (p == null) {
			throw new NoIdFoundException();
		}
		return p;
	}
	public Person validate(String email,String password) {
		Person p = dao.validate(email, password);
		if (p == null) {
			throw new NoIdFoundException();
		}
		return p;
	}

}
