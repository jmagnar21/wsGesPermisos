/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package wsLocal;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.util.*;
import views.ResumenCantidadPerPeriodo;

/**
 *
 * @author Ignacio
 */
@WebService(serviceName = "vwResumenCantPeriodo")
public class VwResumenCantPeriodoWS {

    @WebMethod(operationName = "lstAllResumenCantidadPerPeriodo")
    public ArrayList<ResumenCantidadPerPeriodo> lstAllResumenCantidadPerPeriodo() {
        return dao.VwResumenCantidadPeriodoDAO.getResumenCantidadPerPeriodo();
    }
    
    @WebMethod(operationName = "lstAllResumenCantidadPerPeriodoByPer")
    public ArrayList<ResumenCantidadPerPeriodo> lstAllResumenCantidadPerPeriodoByPer(@WebParam(name = "periodo") int periodo) {
        return dao.VwResumenCantidadPeriodoDAO.getResumenCantidadPerPeriodoByPeriodo(periodo);
    }
    
}
