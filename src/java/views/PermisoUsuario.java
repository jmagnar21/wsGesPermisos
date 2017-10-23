/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package views;


public class PermisoUsuario {
    private int rut;
    private String nombre;
    private String recursoLegal;
    private int diasAut;
    private String comentarios;

    public PermisoUsuario(int rut, String nombre, String recursoLegal, int diasAut, String comentarios) {
        this.rut = rut;
        this.nombre = nombre;
        this.recursoLegal = recursoLegal;
        this.diasAut = diasAut;
        this.comentarios = comentarios;
    }

    public PermisoUsuario() {
        this(0, new String(),new String(), 0, new String());
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRecursoLegal() {
        return recursoLegal;
    }

    public void setRecursoLegal(String recursoLegal) {
        this.recursoLegal = recursoLegal;
    }

    public int getDiasAut() {
        return diasAut;
    }

    public void setDiasAut(int diasAut) {
        this.diasAut = diasAut;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }

    
    
    
}
