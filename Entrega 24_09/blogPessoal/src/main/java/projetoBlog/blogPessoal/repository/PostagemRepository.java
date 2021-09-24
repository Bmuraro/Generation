package projetoBlog.blogPessoal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import projetoBlog.blogPessoal.model.Postagem;

public interface PostagemRepository extends JpaRepository<Postagem, Long>  {
	
	public List<Postagem> findAllByTituloContainingIgnoreCase (String titulo);

}
