package projetoLojaDeGames.LojaDeGames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import projetoLojaDeGames.LojaDeGames.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

	public List<Categoria>findAllByPlataformaContainingIgnoreCase (String plataforma);
	public List<Categoria>findAllByGeneroContainingIgnoreCase (String genero);
	public List<Categoria>findAllByClassificacaoContainingIgnoreCase (String classificacao);
	
}
