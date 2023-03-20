package servlet;

import java.io.IOException;

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
	    throws ServletException, IOException{
	String acao = request.getParameter("acao");
	String user = request.getParameter("user");
	
	if(acao.equalsIgnoreCase("delete")) {
	    daoUsuario.delete(user);
	    RequestDispatcher view= request.getRequestDispatcher("/cadastroUsuario.jsp");
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
	String login = request.getParameter("login");
	String senha = request.getParameter("senha");

	BeanCurso usuario = new BeanCurso();
	usuario.setLogin(login);
	usuario.setSenha(senha);

	try {
	    daoUsuario.salvar(usuario);
	} catch (Exception e) {
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
