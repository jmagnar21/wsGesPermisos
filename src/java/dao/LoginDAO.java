/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import sql.OraConnection;
import java.sql.*;
public class LoginDAO {
    
    public static Boolean autentificarUsuario(int nombreUsuario, String passUsuario){
        long descEstado=0;
        Boolean retorno = null;
        try{
        
        Connection conexion = OraConnection.getConnection();
        String query = "{ ? = call PKG_LOGIN_USUARIO.FN_AUTENTICACION(?,?) }";
        CallableStatement instruccion = conexion.prepareCall(query);
        instruccion.setInt(2,nombreUsuario);
        instruccion.setString(3,passUsuario);
        instruccion.registerOutParameter(1, java.sql.Types.INTEGER);
        instruccion.execute();
        descEstado = instruccion.getLong(1);
        instruccion.close();
        conexion.close();
            if (descEstado>0) {
                retorno=true;
            }else{
                retorno=false;
            }
        
        }catch(SQLException s){
            System.out.println("Error SQL al validar: "+s.getMessage());
        }catch(Exception e){
            System.out.println("Error al validar:"+e.getMessage());
        }
        return retorno;
    }
    
}
