package edu.mum.coffee.service;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
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
		   
		   System.out.print("role"+user.getRole());

	        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
	      
	            grantedAuthorities.add(new SimpleGrantedAuthority(user.getRole()));
	        

	        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), grantedAuthorities);
	    }
	}


