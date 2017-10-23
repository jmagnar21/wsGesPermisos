/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package views;
import java.util.Date;
/**
 *
 * @author Ignacio
 */
public class SolicitudPermiso {
    private int rut;
    private int idPermiso;
    private Date fInicio;
    private Date fFinSolicitud;
    private int cantidadDias;
    private String descEstado;

    public SolicitudPermiso(int rut, int idPermiso, Date fInicio, Date fFinSolicitud, int cantidadDias, String descEstado) {
        this.rut = rut;
        this.idPermiso = idPermiso;
        this.fInicio = fInicio;
        this.fFinSolicitud = fFinSolicitud;
        this.cantidadDias = cantidadDias;
        this.descEstado = descEstado;
    }

    public SolicitudPermiso() {
        this(0, 0, new Date(), new Date(), 0, new String());
    }

    public int getIdPermiso() {
        return idPermiso;
    }

    public void setIdPermiso(int idPermiso) {
        this.idPermiso = idPermiso;
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    public Date getfInicio() {
        return fInicio;
    }

    public void setfInicio(Date fInicio) {
        this.fInicio = fInicio;
    }

    public Date getfFinSolicitud() {
        return fFinSolicitud;
    }

    public void setfFinSolicitud(Date fFinSolicitud) {
        this.fFinSolicitud = fFinSolicitud;
    }

    public int getCantidadDias() {
        return cantidadDias;
    }

    public void setCantidadDias(int cantidadDias) {
        this.cantidadDias = cantidadDias;
    }

    public String getDescEstado() {
        return descEstado;
    }

    public void setDescEstado(String descEstado) {
        this.descEstado = descEstado;
    }
    
    
    
}
