package org.generation.farmacia.repository;

import java.util.List;

import org.generation.farmacia.model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
	
	public List<Categoria>findAllByCategoriaContainingIgnoreCase (String categoria);
	
}
