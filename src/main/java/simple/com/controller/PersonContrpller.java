package simple.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import simple.com.dto.Person;
import simple.com.service.PersonService;

@RestController
public class PersonContrpller {
	@Autowired
	PersonService personService;
	
	@PostMapping("/save")
	public Person save(@RequestBody Person request) {
		System.out.println(request);
		return null;
	}

}
