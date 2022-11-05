package com.se.suanha.n4_QLthietbisuanha_kttkpm.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.se.suanha.n4_QLthietbisuanha_kttkpm.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
	
	@Query(value = "SELECT * FROM user where IdUser= ?", nativeQuery = true)
	public User findUserById(int idUser);

}
