package projetoLojaDeGames.LojaDeGames.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import projetoLojaDeGames.LojaDeGames.model.Categoria;
import projetoLojaDeGames.LojaDeGames.repository.CategoriaRepository;

@RestController
@CrossOrigin(origins="*",allowedHeaders="*")
@RequestMapping("/categoria")
public class CategoriaController {
	
	@Autowired
	private CategoriaRepository categoriaRepository;
	
	@GetMapping
	public ResponseEntity<List<Categoria>> getAll(){
		return ResponseEntity.ok(categoriaRepository.findAll());
	}
	@GetMapping("/{id}")
	public ResponseEntity<Categoria> getById(@PathVariable long id){
		return categoriaRepository.findById(id).map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	@GetMapping("/plataforma/{plataforma}")
	public ResponseEntity<List<Categoria>> getByPlataforma(@PathVariable String plataforma){
		return ResponseEntity.ok(categoriaRepository.findAllByPlataformaContainingIgnoreCase(plataforma));
	}
	@GetMapping("/genero/{genero}")
	public ResponseEntity<List<Categoria>> getByGenero(@PathVariable String genero){
		return ResponseEntity.ok(categoriaRepository.findAllByGeneroContainingIgnoreCase(genero));
	}
	@GetMapping("/classificacao/{classificacao}")
	public ResponseEntity<List<Categoria>> getByClassificacao(@PathVariable String classificacao){
		return ResponseEntity.ok(categoriaRepository.findAllByClassificacaoContainingIgnoreCase (classificacao));
	}
	@PostMapping
	public ResponseEntity<Categoria> post (@RequestBody Categoria categoria){
		return ResponseEntity.status(HttpStatus.CREATED)
				.body(categoriaRepository.save(categoria));
	}
	@PutMapping
	public ResponseEntity<Categoria> put (@RequestBody Categoria categoria){
		return ResponseEntity.ok(categoriaRepository.save(categoria));
	}
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		categoriaRepository.deleteById(id);
	}

}
