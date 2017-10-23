/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package views;

/**
 *
 * @author Ignacio
 */
public class ResumenCantidadPerPeriodo {
    
    private int periodoSolicitud;
    private String recursoLegal;
    private String descripcionEstado;
    private int cantidadPermisos;

    public ResumenCantidadPerPeriodo(int periodoSolicitud, String recursoLegal, String descripcionEstado, int cantidadPermisos) {
        this.periodoSolicitud = periodoSolicitud;
        this.recursoLegal = recursoLegal;
        this.descripcionEstado = descripcionEstado;
        this.cantidadPermisos = cantidadPermisos;
    }

    public ResumenCantidadPerPeriodo() {
        this(0,new String(), new String(), 0);
    }

    public int getPeriodoSolicitud() {
        return periodoSolicitud;
    }

    public void setPeriodoSolicitud(int periodoSolicitud) {
        this.periodoSolicitud = periodoSolicitud;
    }

    public String getRecursoLegal() {
        return recursoLegal;
    }

    public void setRecursoLegal(String recursoLegal) {
        this.recursoLegal = recursoLegal;
    }

    public String getDescripcionEstado() {
        return descripcionEstado;
    }

    public void setDescripcionEstado(String descripcionEstado) {
        this.descripcionEstado = descripcionEstado;
    }

    public int getCantidadPermisos() {
        return cantidadPermisos;
    }

    public void setCantidadPermisos(int cantidadPermisos) {
        this.cantidadPermisos = cantidadPermisos;
    }
    
    
        
}
