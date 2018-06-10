package edu.mum.coffee.service;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.mum.coffee.domain.Person;
import edu.mum.coffee.repository.PersonRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
    private PersonRepository userRepository;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		System.out.print(username);
		   Person user = userRepository.findByEmail(username).get(0);
		   
		   System.out.println("role "+user.getRole());
		   List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
	      
	      
		   grantList.add(new SimpleGrantedAuthority(user.getRole()));
	        
	            UserDetails userDetails = (UserDetails) new User(user.getEmail(), user.getPassword(), grantList);
	        return userDetails ;
	    }
	}


