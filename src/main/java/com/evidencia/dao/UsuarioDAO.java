package com.evidencia.dao;

import com.evidencia.model.Usuario;
import java.util.List;

public interface UsuarioDAO {
    void insertar(Usuario usuario);
    void actualizar(Usuario usuario);
    void eliminar(int id);
    Usuario obtenerPorId(int id);
    List<Usuario> obtenerTodos();
}
