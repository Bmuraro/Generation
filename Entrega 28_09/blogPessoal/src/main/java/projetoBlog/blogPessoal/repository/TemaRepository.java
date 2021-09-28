package projetoBlog.blogPessoal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import projetoBlog.blogPessoal.model.Tema;

public interface TemaRepository extends JpaRepository<Tema,Long> {
	public List<Tema>findAllByDescricaoContainingIgnoreCase(String descricao);
}
