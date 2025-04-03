package com.evidencia.servlet;

import com.evidencia.model.Usuario;
import com.evidencia.service.UsuarioService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
    private UsuarioService usuarioService;

    @Override
    public void init() throws ServletException {
        usuarioService = new UsuarioService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            listarUsuarios(request, response);
        } else {
            switch (action) {
                case "editar":
                    mostrarFormularioEdicion(request, response);
                    break;
                case "eliminar":
                    eliminarUsuario(request, response);
                    break;
                default:
                    listarUsuarios(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            listarUsuarios(request, response);
        } else {
            switch (action) {
                case "crear":
                    crearUsuario(request, response);
                    break;
                case "actualizar":
                    actualizarUsuario(request, response);
                    break;
                default:
                    listarUsuarios(request, response);
            }
        }
    }

    private void listarUsuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Usuario> usuarios = usuarioService.obtenerTodosLosUsuarios();
        request.setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("/views/listaUsuarios.jsp").forward(request, response);
    }

    private void actualizarUsuario(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Usuario usuario = new Usuario(id, nombre, apellido, email, password);
        usuarioService.actualizarUsuario(usuario);
        response.sendRedirect("UsuarioServlet");
    }

    private void eliminarUsuario(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        usuarioService.eliminarUsuario(id);
        response.sendRedirect("UsuarioServlet");
    }

    private void mostrarFormularioEdicion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Usuario usuario = usuarioService.obtenerUsuarioPorId(id);
        request.setAttribute("usuario", usuario);
        request.getRequestDispatcher("/views/editarUsuario.jsp").forward(request, response);
    }
}
