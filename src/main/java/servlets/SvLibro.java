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

        if (action.equals("todos")) {
            List<Libro> listaLibros = libroService.todosLosLibros();
            HttpSession miSession = request.getSession();
            miSession.setAttribute("listaLibros", listaLibros);
            response.sendRedirect("buscarLibros.jsp");
        } else if (action.equals("porISBN")) {
            Long isbn = Long.parseLong(request.getParameter("isbn"));
            Libro libro = libroService.buscarPorIsbn(isbn);
            HttpSession miSession = request.getSession();
            miSession.setAttribute("libro", libro);
            response.sendRedirect("busquedaPorIsbn.jsp");
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
        }
    }
}
