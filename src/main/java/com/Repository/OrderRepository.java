package com.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.bean.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {
	@Query("select o from Order o where o.eid = :email")
	public List<Order> findOrdersByEmail(@Param("email") String email);
}
