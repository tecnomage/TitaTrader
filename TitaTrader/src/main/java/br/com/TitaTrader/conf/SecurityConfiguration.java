 package br.com.TitaTrader.conf;

 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.http.HttpMethod;
 import
 org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
 import
 org.springframework.security.config.annotation.web.builders.HttpSecurity;
 import
 org.springframework.security.config.annotation.web.builders.WebSecurity;
 import
 org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
 import
 org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
 import org.springframework.security.core.userdetails.UserDetailsService;
 import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
 import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import br.com.TitaTrader.daos.TraderDao;
import br.com.TitaTrader.models.Trader;

 @EnableWebSecurity
 public class SecurityConfiguration extends WebSecurityConfigurerAdapter
 {

 @Override
 protected void configure(HttpSecurity http) throws Exception
 {
 http.authorizeRequests()
 .antMatchers("/url1").hasRole("ADMIN")
 .antMatchers("/home/**").permitAll()
 .antMatchers(HttpMethod.POST,"/form").hasRole("ADMIN")
 .antMatchers("/url3/**").permitAll()
 .anyRequest().authenticated()
 .and()
 .formLogin().permitAll()
 .and()
 .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));

 }

 @Autowired
 private TraderDao traderdao;

 @Override
 protected void configure(AuthenticationManagerBuilder auth)
 throws Exception
 {
 auth.userDetailsService(traderdao).passwordEncoder(new BCryptPasswordEncoder());
 }

 @Override
 public void configure(WebSecurity web) throws Exception
 {
 //you can change
 web.ignoring().antMatchers("/resources/**");
 }
 }
