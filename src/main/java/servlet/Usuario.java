package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BeanCurso;
import dao.DaoUsuario;

/**
 * Servlet implementation class Usuario
 */
@WebServlet("/salvarUsuario")
public class Usuario extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private DaoUsuario daoUsuario = new DaoUsuario();

    public Usuario() {
	super();
    }

    protected void doGet(HttpServletRequest request,
	    HttpServletResponse response)
	    throws ServletException, IOException {
	String acao = request.getParameter("acao");
	String userId = request.getParameter("user");

	if (acao.equalsIgnoreCase("delete")) {
	    daoUsuario.delete(userId);
	    RequestDispatcher view = request
		    .getRequestDispatcher("/cadastroUsuario.jsp");
	    try {
		request.setAttribute("usuarios", daoUsuario.listar());
	    } catch (Exception e) {
		e.printStackTrace();
	    }
	    view.forward(request, response);
	} else if (acao.equalsIgnoreCase("editar")) {
	    try {
		BeanCurso beanCurso = daoUsuario.consultar(userId);

		RequestDispatcher view = request
			.getRequestDispatcher("/cadastroUsuario.jsp");
		request.setAttribute("user", beanCurso);
		view.forward(request, response);
	    } catch (Exception e) {
		e.printStackTrace();
	    }
	} else if (acao.equalsIgnoreCase("listartodos")) {
	    RequestDispatcher view = request
		    .getRequestDispatcher("/cadastroUsuario.jsp");
	    try {
		request.setAttribute("usuarios", daoUsuario.listar());
	    } catch (Exception e) {
		e.printStackTrace();
	    }
	    view.forward(request, response);
	}
    }

    protected void doPost(HttpServletRequest request,
	    HttpServletResponse response)
	    throws ServletException, IOException {

	String acao = request.getParameter("acao");

	if (acao != null && acao.equalsIgnoreCase("reset")) {
	    try {
		RequestDispatcher view = request
			.getRequestDispatcher("/cadastroUsuario.jsp");
		request.setAttribute("usuarios", daoUsuario.listar());
		view.forward(request, response);
	    } catch (Exception e) {
		e.printStackTrace();
	    }
	} else {
	    String id = request.getParameter("id");
	    String login = request.getParameter("login");
	    String nome = request.getParameter("nome");
	    String senha = request.getParameter("senha");
	    String telefone = request.getParameter("telefone");

	    BeanCurso usuario = new BeanCurso();
	    usuario.setId(!id.isEmpty() ? Long.parseLong(id) : 0);
	    usuario.setLogin(login);
	    usuario.setSenha(senha);
	    usuario.setNome(nome);
	    usuario.setTelefone(telefone);

	    try {
		if (id == null || id.isEmpty()
			&& !daoUsuario.validarLogin(login)) {
		    request.setAttribute("msg",
			    "Usuário ja existe com o mesmo login.");
		}

		if (id == null || id.isEmpty()
			&& daoUsuario.validarLogin(login)) {

		    try {
			daoUsuario.salvar(usuario);
			request.setAttribute("msg",
				"Usuário criado com sucesso.");
		    } catch (Exception e) {
			e.printStackTrace();
		    }

		} else if (id != null && !id.isEmpty()) {
		    daoUsuario.atualizar(usuario);
		    request.setAttribute("msg",
			    "Usuário atualizado com sucesso.");
		}
	    } catch (SQLException e) {
		e.printStackTrace();
	    }

	    RequestDispatcher view = request
		    .getRequestDispatcher("/cadastroUsuario.jsp");
	    try {
		request.setAttribute("usuarios", daoUsuario.listar());
	    } catch (Exception e) {
		e.printStackTrace();
	    }
	    view.forward(request, response);
	}
    }
}
