package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.BeanCurso;
import connection.SingleConnection;

public class DaoUsuario {

    private Connection connection;

    public DaoUsuario() {
	connection = SingleConnection.getConnection();
    }

    public void salvar(BeanCurso usuario) throws Exception {
	try {
	    String sql = "insert into usuario(login,senha) values (?, ?)";
	    PreparedStatement insert = connection
		    .prepareStatement(sql);
	    insert.setString(1, usuario.getLogin());
	    insert.setString(2, usuario.getSenha());
	    insert.execute();
	    connection.commit();
	} catch (Exception e) {
	    e.printStackTrace();
	    try {
		connection.rollback();
	    } catch (Exception e2) {
		e2.printStackTrace();
	    }
	}

    }

    public List<BeanCurso> listar() throws Exception {
	List<BeanCurso> listar = new ArrayList();

	String sql = "select * from usuario";
	PreparedStatement statement = connection
		.prepareStatement(sql);
	ResultSet resultSet = statement.executeQuery();

	while (resultSet.next()) {
	    BeanCurso beanCurso = new BeanCurso();
	    beanCurso.setId(resultSet.getLong("id"));
	    beanCurso.setLogin(resultSet.getString("login"));
	    beanCurso.setSenha(resultSet.getString("senha"));

	    listar.add(beanCurso);
	}

	return listar;
    }

    public void delete(String login) {
	try {
	    String sql = "delete from usuario where login = '" + login
		    + "'";
	    PreparedStatement preparedStatement = connection
		    .prepareStatement(sql);
	    preparedStatement.execute();
	} catch (Exception e) {
	    e.printStackTrace();
	    try {
		connection.rollback();
	    } catch (SQLException e1) {
		e1.printStackTrace();
	    }
	}
    }

    public BeanCurso consultar(String login) throws SQLException {
	String sql = "select * from usuario where login='" + login
		+ "'";

	PreparedStatement preparedStatement = connection
		.prepareStatement(sql);
	ResultSet resultSet = preparedStatement.executeQuery();
	if (resultSet.next()) {
	    BeanCurso beanCurso = new BeanCurso();
	    beanCurso.setId(resultSet.getLong("id"));
	    beanCurso.setLogin(resultSet.getString("login"));
	    beanCurso.setSenha(resultSet.getString("senha"));

	    return beanCurso;
	}
	return null;
    }

    public void atualizar(BeanCurso usuario) {
	String sql = "update usuario set login = ?, senha = ? where id = "
		+ usuario.getId();

	try {
	    PreparedStatement preparedStatement = connection
		    .prepareStatement(sql);
	    preparedStatement.setString(1, usuario.getLogin());
	    preparedStatement.setString(2, usuario.getSenha());
	    preparedStatement.executeUpdate();
	} catch (SQLException e) {
	    e.printStackTrace();
	    try {
		connection.rollback();
	    } catch (SQLException e1) {
		e1.printStackTrace();
	    }
	}
    }
}
