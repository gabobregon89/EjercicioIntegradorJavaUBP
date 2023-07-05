package models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Libro {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Long ISBN;
    private String titulo;
    private Integer anio;
    private Integer ejemplares;
    private Boolean alta;

    public Libro() {}

    public Libro(Long ISBN, String titulo, Integer anio, Integer ejemplares, Boolean alta) {
        this.ISBN = ISBN;
        this.titulo = titulo;
        this.anio = anio;
        this.ejemplares = ejemplares;
        this.alta = alta;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getISBN() {
        return ISBN;
    }

    public void setISBN(Long ISBN) {
        this.ISBN = ISBN;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getAnio() {
        return anio;
    }

    public void setAnio(Integer anio) {
        this.anio = anio;
    }

    public Integer getEjemplares() {
        return ejemplares;
    }

    public void setEjemplares(Integer ejemplares) {
        this.ejemplares = ejemplares;
    }

    public Boolean getAlta() {
        return alta;
    }

    public void setAlta(Boolean alta) {
        this.alta = alta;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Libro libro = (Libro) o;
        return Objects.equals(id, libro.id) &&
                Objects.equals(ISBN, libro.ISBN) &&
                Objects.equals(titulo, libro.titulo) &&
                Objects.equals(anio, libro.anio) &&
                Objects.equals(ejemplares, libro.ejemplares) &&
                Objects.equals(alta, libro.alta);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ISBN, titulo, anio, ejemplares, alta);
    }

    @Override
    public String toString() {
        return "Libro{" +
                "id=" + id +
                ", ISBN=" + ISBN +
                ", titulo='" + titulo + '\'' +
                ", anio=" + anio +
                ", ejemplares=" + ejemplares +
                ", alta=" + alta +
                '}';
    }
}
