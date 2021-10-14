package projetoLojaDeGames.LojaDeGames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import projetoLojaDeGames.LojaDeGames.model.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Long> {
	
	public List<Produto>findAllByTituloContainingIgnoreCase (String titulo);
	public List<Produto>findAllByDescricaoContainingIgnoreCase (String descricao);
	public List<Produto>findAllByQuantidadeContainingIgnoreCase (String quantidade);

}
