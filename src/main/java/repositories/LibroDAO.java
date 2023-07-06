package repositories;

import connections.Conexion;
import models.Libro;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

public class LibroDAO {

    EntityManager entityManager;

    public LibroDAO() {}

    public void guardarLibro(Libro libro) {
        entityManager = Conexion.getEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(libro);
            entityManager.getTransaction().commit();
        } finally {
            if (entityManager != null) {
                entityManager.close();
            }
        }
    }

    public List<Libro> todosLosLibros() {
        entityManager = Conexion.getEntityManager();
        try {
            Query sql = entityManager.createQuery("SELECT a FROM Libro a");
            List<Libro> listaLibros = sql.getResultList();
            return listaLibros;
        } finally {
            if (entityManager != null) {
                entityManager.close();
            }
        }
    }
}
