package com.se.suanha.user_services.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.se.suanha.user_services.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
	
	@Query(value = "SELECT * FROM user where IdUser= ?", nativeQuery = true)
	public User findUserById(int idUser);

}
