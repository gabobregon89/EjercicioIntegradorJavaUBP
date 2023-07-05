package repositories;

import connections.Conexion;
import models.Libro;

import javax.persistence.EntityManager;

public class LibroDAO {

    EntityManager entityManager;

    public LibroDAO() {}

    public void guardarLibro(Libro libro) {
        entityManager = Conexion.getEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(libro);
        entityManager.getTransaction().commit();

        if (entityManager != null) {
            entityManager.close();
        }
    }
}
