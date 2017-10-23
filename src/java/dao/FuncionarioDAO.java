/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import sql.OraConnection;
import java.sql.*;


public class FuncionarioDAO {
    
    public static int getAntiguedadFuncionario(int rutUsuario){
        int diasAntiguedad=0;
        try{
        
        Connection conexion = OraConnection.getConnection();
        String query = "{ ? = call FN_ANTIGUEDAD_FUNCIONARIO(?) }";
        CallableStatement instruccion = conexion.prepareCall(query);
        instruccion.setInt(2,rutUsuario);
        instruccion.registerOutParameter(1, java.sql.Types.INTEGER);
        instruccion.execute();
        diasAntiguedad = instruccion.getInt(1);
        instruccion.close();
        conexion.close();
        
        
        }catch(SQLException s){
            System.out.println("Error SQL al validar: "+s.getMessage());
        }catch(Exception e){
            System.out.println("Error al validar:"+e.getMessage());
        }
        return diasAntiguedad;
    }
}
