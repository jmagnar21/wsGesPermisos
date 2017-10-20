/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package wsLogin;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import dao.LoginDAO;
/**
 *
 * @author Ignacio
 */
@WebService(serviceName = "LoginWS")
public class LoginWS {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "LoginService")
    public Boolean LoginService(@WebParam(name = "rut") int rut, @WebParam(name = "password") String password) {
        //TODO write your implementation code here:
        return LoginDAO.autentificarUsuario(rut, password);
    }
}
