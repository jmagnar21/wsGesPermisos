/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package views;

/**
 *
 * @author Ignacio
 */
public class ResumenCantidadTipoPermiso {
    private String unidadInterna;
    private String recursoLegal;
    private String descEstado;
    private int cantidadPermisos;

    public ResumenCantidadTipoPermiso(String unidadInterna, String recursoLegal, String descEstado, int cantidadPermisos) {
        this.unidadInterna = unidadInterna;
        this.recursoLegal = recursoLegal;
        this.descEstado = descEstado;
        this.cantidadPermisos = cantidadPermisos;
    }

    public ResumenCantidadTipoPermiso() {
        this(new String(), new String(), new String(), 0);
    }

    public String getUnidadInterna() {
        return unidadInterna;
    }

    public void setUnidadInterna(String unidadInterna) {
        this.unidadInterna = unidadInterna;
    }

    public String getRecursoLegal() {
        return recursoLegal;
    }

    public void setRecursoLegal(String recursoLegal) {
        this.recursoLegal = recursoLegal;
    }

    public String getDescEstado() {
        return descEstado;
    }

    public void setDescEstado(String descEstado) {
        this.descEstado = descEstado;
    }

    public int getCantidadPermisos() {
        return cantidadPermisos;
    }

    public void setCantidadPermisos(int cantidadPermisos) {
        this.cantidadPermisos = cantidadPermisos;
    }
    
    
    
}
