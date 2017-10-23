/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package wsLocal;

import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.xml.datatype.XMLGregorianCalendar;
import views.SolicitudPermiso;

/**
 *
 * @author Ignacio
 */
@WebService(serviceName = "VwSolicitudPermisoWS")
public class VwSolicitudPermisoWS {


    @WebMethod(operationName = "lstAllSolicitudPermiso")
    public ArrayList<SolicitudPermiso> lstAllSolicitudPermiso() {
        return dao.SolicitudPermisoDAO.getSolicitudPermiso();
    }
    
    @WebMethod(operationName = "lstAllSolicitudPermisoByRut")
    public ArrayList<SolicitudPermiso> lstAllSolicitudPermisoByRut(@WebParam(name = "rut") int rut) {
        return dao.SolicitudPermisoDAO.getSolicitudPermisoByRut(rut);
    }
    
    @WebMethod(operationName = "lstAllSolicitudPermisoByPermiso")
    public ArrayList<SolicitudPermiso> lstAllSolicitudPermisoByPermiso(@WebParam(name = "permiso") int permiso) {
        return dao.SolicitudPermisoDAO.getSolicitudPermisoByPermiso(permiso);
    }
    
    @WebMethod(operationName = "getTieneDiasDisponibles")
    public boolean getTieneDiasDisponibles(@WebParam(name = "rut") int rut, @WebParam(name = "motivo") int motivo, @WebParam(name = "fechaInicio") String fInicio, @WebParam(name = "fechaTermino") String fTermino) {
        System.out.println(String.valueOf(fInicio));
        return dao.SolicitudPermisoDAO.getTieneDiasDisponibles(rut, motivo, fInicio, fTermino);
    }
}
