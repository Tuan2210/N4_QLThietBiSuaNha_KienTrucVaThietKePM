package com.se.suanha.config;

import java.time.LocalDate;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DataSource securityDataSource;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        auth.jdbcAuthentication().dataSource(securityDataSource);

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
        .antMatchers("/resources/css/**").permitAll()
        .antMatchers("/styles/**").permitAll()
        .antMatchers("/resources/bootstrap/**").permitAll()
        .antMatchers("/resources/jquery/**").permitAll()
        .antMatchers("/resources/fonts/**").permitAll()
        .antMatchers("/saveOrder**").hasAnyRole("EMPLOYEE", "ADMIN")
        .antMatchers("/cart**").hasAnyRole("EMPLOYEE", "ADMIN")
        .antMatchers("/resources/**").permitAll()
        .antMatchers("/").permitAll()
        .and()
        .formLogin()
        .loginPage("/LoginPage")
        .loginProcessingUrl("/users")
        .permitAll()
        .and()
        .logout().permitAll()
        .and()
        .exceptionHandling().accessDeniedPage("/access-denied");

    }

    @Bean
    public UserDetailsManager userDetailsManager() {

        JdbcUserDetailsManager jdbcUserDetailsManager = new JdbcUserDetailsManager();

        jdbcUserDetailsManager.setDataSource(securityDataSource);

        return jdbcUserDetailsManager;
    }

}
