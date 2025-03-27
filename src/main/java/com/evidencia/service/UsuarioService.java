package com.evidencia.service;

import com.evidencia.dao.UsuarioDAO;
import com.evidencia.dao.UsuarioDAOImpl;
import com.evidencia.model.Usuario;
import java.util.List;

public class UsuarioService {
    private UsuarioDAO usuarioDAO;

    public UsuarioService() {
        this.usuarioDAO = new UsuarioDAOImpl();
    }

    public void registrarUsuario(Usuario usuario) {
        usuarioDAO.insertar(usuario);
    }

    public void actualizarUsuario(Usuario usuario) {
        usuarioDAO.actualizar(usuario);
    }

    public void eliminarUsuario(int id) {
        usuarioDAO.eliminar(id);
    }

    public Usuario obtenerUsuarioPorId(int id) {
        return usuarioDAO.obtenerPorId(id);
    }

    public List<Usuario> obtenerTodosLosUsuarios() {
        return usuarioDAO.obtenerTodos();
    }
}
