package beans;

public class BeanCurso {

    private Long id;
    private String login;
    private String nome;
    private String senha;
    private String telefone;

    public boolean validarLoginSenha(String login, String senha) {
	if (login.equalsIgnoreCase("admin")
		&& senha.equalsIgnoreCase("admin")) {
	    return true;
	} else {
	    return false;
	}
    }

    public Long getId() {
	return id;
    }

    public void setId(Long id) {
	this.id = id;
    }

    public String getLogin() {
	return login;
    }

    public void setLogin(String login) {
	this.login = login;
    }

    public String getSenha() {
	return senha;
    }

    public void setSenha(String senha) {
	this.senha = senha;
    }

    public String getNome() {
	return nome;
    }

    public void setNome(String nome) {
	this.nome = nome;
    }

    public String getTelefone() {
	return telefone;
    }

    public void setTelefone(String telefone) {
	this.telefone = telefone;
    }

}
