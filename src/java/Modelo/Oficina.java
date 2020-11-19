
package Modelo;

/**
 *
 * @author lainc
 */
public class Oficina {

    int id;
    String nom;
    String Dir;

    public Oficina() {
    }

    public Oficina(int id, String nom, String Dir) {
        this.id = id;
        this.nom = nom;
        this.Dir = Dir;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDir() {
        return Dir;
    }

    public void setDir(String Dir) {
        this.Dir = Dir;
    }
}
