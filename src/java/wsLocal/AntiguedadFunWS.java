/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package wsLocal;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import dao.FuncionarioDAO;
/**
 *
 * @author Ignacio
 */
@WebService(serviceName = "antiguedadFunWS")
public class AntiguedadFunWS {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getAntiguedadFun")
    public int getAntiguedadFun(@WebParam(name = "rutFun") int rutFun) {
        return FuncionarioDAO.getAntiguedadFuncionario(rutFun);
    }
}
