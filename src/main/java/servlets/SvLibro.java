package servlets;

import models.Libro;
import services.LibroService;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class SvLibro extends HttpServlet {

    private static final long serialVersionUID = 1L;

    LibroService libroService;

    public SvLibro() {
        this.libroService = new LibroService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        List<Libro> listaLibros;

        if (action.equals("todos")) {
            listaLibros = libroService.todosLosLibros();

            if (listaLibros != null) {
                HttpSession miSession = request.getSession();
                miSession.setAttribute("listaLibros", listaLibros);

                response.sendRedirect("buscarLibros.jsp");
            } else {
                HttpSession miSession = request.getSession();
                miSession.setAttribute("listaLibros", listaLibros);

                response.sendRedirect("error.jsp");
            }
        } else if (action.equals("porISBN")) {
            Libro libro = new Libro();
            if (!request.getParameter("isbn").equals("")) {
                Long isbn = Long.parseLong(request.getParameter("isbn"));

                libro = libroService.buscarPorIsbn(isbn);

                HttpSession miSession = request.getSession();
                miSession.setAttribute("libro", libro);

                response.sendRedirect("busquedaPorIsbn.jsp");
            } else {
                HttpSession miSession = request.getSession();
                miSession.setAttribute("libro", libro);

                response.sendRedirect("errorParticular.jsp");
            }
        } else if (action.equals("eliminar")) {
            Long isbn = Long.parseLong(request.getParameter("isbnEliminar"));

            Libro libro = libroService.eliminarLibro(isbn);

            HttpSession miSession = request.getSession();
            miSession.setAttribute("libro", libro);

            response.sendRedirect("libroEliminado.jsp");

        } else if (action.equals("activar")) {
            Long isbn = Long.parseLong(request.getParameter("isbnActivar"));

            Libro libro = libroService.activarLibro(isbn);

            HttpSession miSession = request.getSession();
            miSession.setAttribute("libro", libro);

            response.sendRedirect("libroActivado.jsp");

        } else if (action.equals("editar")) {
            Long isbn = Long.parseLong(request.getParameter("isbnActualizar"));

            Libro libro = libroService.buscarPorIsbn(isbn);

            HttpSession miSession = request.getSession();
            miSession.setAttribute("libro", libro);

            response.sendRedirect("actualizarLibro.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");

        if (action.equals("crear")) {

            String isbn = request.getParameter("isbn");
            String titulo = request.getParameter("titulo");
            String anio = request.getParameter("anio");
            String ejemplares = request.getParameter("ejemplares");

            libroService.crearLibro(isbn, titulo, anio, ejemplares);

            response.sendRedirect("index.jsp");

        } else if (action.equals("actualizar")) {

            Libro libro =  (Libro) request.getSession().getAttribute("libro");

            String isbn = request.getParameter("isbn");
            String titulo = request.getParameter("titulo");
            String anio = request.getParameter("anio");
            String ejemplares = request.getParameter("ejemplares");
            String alta = request.getParameter("alta");

            libro.setISBN(Long.parseLong(isbn));
            libro.setTitulo(titulo);
            libro.setAnio(Integer.parseInt(anio));
            libro.setEjemplares(Integer.parseInt(ejemplares));
            libro.setAlta(Boolean.parseBoolean(alta));

            libroService.actualizarLibro(libro);

            response.sendRedirect("index.jsp");
        }
    }
}
