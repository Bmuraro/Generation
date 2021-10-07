package projetoLojaDeGames.LojaDeGames.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="tb_usuario")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@NotNull(message = "O campos nome é obrigatório.")
	@Size(min=2, max=100,message = "O campo nome contempla no mínimo 2 e no máximo 100 caracteres.")
	private String nome;
	
	@NotBlank(message = "O campo usuario é obrigatório.")
	@Size(min=5, max=100,message = "O campo usuario contempla no mínimo 5 e no máximo 100 caracteres.")
	private String usuario;
	
	@NotBlank(message = "O campo senha é obrigatório")
	@Size(min=5, message = "A senha deve conter no mínimo 5 caracteres.")
	private String senha;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
		
}
