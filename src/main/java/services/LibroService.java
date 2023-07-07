package services;

import models.Libro;
import repositories.LibroDAO;

import java.util.ArrayList;
import java.util.List;

public class LibroService {

    LibroDAO libroDAO;

    public LibroService() {
        this.libroDAO = new LibroDAO();
    }

    public void crearLibro(String ISBN, String titulo, String anio, String ejemplares) {
        Libro libro = new Libro();

        libro.setISBN(Long.parseLong(ISBN));
        libro.setTitulo(titulo);
        libro.setAnio(Integer.parseInt(anio));
        libro.setEjemplares(Integer.parseInt(ejemplares));
        libro.setAlta(true);

        libroDAO.guardarLibro(libro);
    }

    public List<Libro> todosLosLibros() {
        return libroDAO.todosLosLibros();
    }

    public Libro buscarPorIsbn(Long isbn) {
        return libroDAO.busquedaPorIsbn(isbn);
    }
}
