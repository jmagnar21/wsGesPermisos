/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package wsLocal;

import java.util.ArrayList;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import views.ResumenCantidadTipoPermiso;

/**
 *
 * @author Ignacio
 */
@WebService(serviceName = "VwResumenCantTipoPerWS")
public class VwResumenCantTipoPerWS {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "lstAllResumenCantidadTipoPer")
    public ArrayList<ResumenCantidadTipoPermiso> lstAllResumenCantidadTipoPer() {
        return dao.VwResumenCantidadTipoPermisoDAO.getResumenCantidadTipoPermiso();
    }
}
