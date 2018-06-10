package edu.mum.coffee.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import edu.mum.coffee.service.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	  @Autowired
	  private UserDetailsServiceImpl userDetailsService;
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
	    http.csrf().disable();

	 // The pages does not require login
        http.authorizeRequests().antMatchers("/","/home", "/login","/index","/register", "/logout","/products/*","/persons/*","/orders/*").permitAll();
	 // For ADMIN only.
        http.authorizeRequests().antMatchers("/admin").hasAuthority("ADMIN");
        // For User only.
        http.authorizeRequests().antMatchers("/profile").hasAnyAuthority("ADMIN", "USER");
        
     // For User only.
        http.authorizeRequests().antMatchers("/checkOut").hasAnyAuthority("USER");
	      
      // When the user has logged in as XX.
      // But access a page that requires role YY,
      // AccessDeniedException will be thrown.
       http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
       
       
       // Config for Login Form
       http.authorizeRequests().and().formLogin()//
               // Submit URL of login page.
               .loginProcessingUrl("/j_spring_security_check") // Submit URL
               .loginPage("/login")//
               .defaultSuccessUrl("/home")//
               .failureUrl("/login")//
               .usernameParameter("username")//
               .passwordParameter("password")
               // Config for Logout Page
               .and()
               .logout()
               .logoutUrl("/logout")
               .logoutSuccessUrl("/");
       
       
//     
    }

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		  auth.userDetailsService(userDetailsService);
	}
}