/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package wsLocal;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import dao.VwPermisoUsuarioDAO;
import views.PermisoUsuario;
import java.util.*;
/**
 *
 * @author Ignacio
 */
@WebService(serviceName = "vwPermisoUsuarioWS")
public class VwPermisoUsuarioWS {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "lstAllPermisosUsuarios")
    public ArrayList<PermisoUsuario> lstAllPermisosUsuarios() {
        return dao.VwPermisoUsuarioDAO.getAllVwPermisoUsuario();
    }
    
    @WebMethod(operationName = "lstPermisosUsuariosByRut")
    public ArrayList<PermisoUsuario> lstPermisosUsuariosByRut(@WebParam(name = "rut") int rut) {
        return dao.VwPermisoUsuarioDAO.getVwPermisoUsuarioByRut(rut);
    }
}
