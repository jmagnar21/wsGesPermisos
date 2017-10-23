/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.*;
import java.util.ArrayList;
import views.PermisoUsuario;
import java.util.Arrays;
import java.util.List;
import sql.OraConnection;

public class VwPermisoUsuarioDAO {
    
    public static ArrayList<PermisoUsuario> getAllVwPermisoUsuario(){
        ArrayList<PermisoUsuario> lst = new ArrayList<PermisoUsuario>();
        try{
        Connection conexion = OraConnection.getConnection();
        String query = "SELECT * FROM VW_CANTIDAD_PERMISOS_USUARIOS ORDER BY RUT_USUARIO";
        PreparedStatement listar = conexion.prepareStatement(query);
        ResultSet rs = listar.executeQuery();
        while (rs.next()) {
            PermisoUsuario dto = new PermisoUsuario();
            dto.setRut(rs.getInt("RUT_USUARIO"));
            dto.setNombre(rs.getString("NOMBRE_USUARIO"));
            dto.setRecursoLegal(rs.getString("RECURSO_LEGAL"));
            dto.setDiasAut(rs.getInt("DIAS_AUTORIZADOS"));
            dto.setComentarios(rs.getString("COMENTARIOS"));
            lst.add(dto);
        }
        
        }catch(SQLException s){
            System.out.println("Error SQL al listar: "+s.getMessage());
        }catch(Exception e){
            System.out.println("Error al listar:"+e.getMessage());
        }
        return lst;
        
    }
    
    public static ArrayList<PermisoUsuario> getVwPermisoUsuarioByRut(int rut){
        ArrayList<PermisoUsuario> lst = new ArrayList<PermisoUsuario>();
        try{
        Connection conexion = OraConnection.getConnection();
        String query = "SELECT * FROM VW_CANTIDAD_PERMISOS_USUARIOS WHERE RUT_USUARIO=? ORDER BY RUT_USUARIO";
        PreparedStatement listar = conexion.prepareStatement(query);
        listar.setInt(1, rut);
        ResultSet rs = listar.executeQuery();
        while (rs.next()) {
            PermisoUsuario dto = new PermisoUsuario();
            dto.setRut(rs.getInt("RUT_USUARIO"));
            dto.setNombre(rs.getString("NOMBRE_USUARIO"));
            dto.setRecursoLegal(rs.getString("RECURSO_LEGAL"));
            dto.setDiasAut(rs.getInt("DIAS_AUTORIZADOS"));
            dto.setComentarios(rs.getString("COMENTARIOS"));
            lst.add(dto);
        }
        
        }catch(SQLException s){
            System.out.println("Error SQL al listar: "+s.getMessage());
        }catch(Exception e){
            System.out.println("Error al listar:"+e.getMessage());
        }
        return lst;
        
    }
    
    
   
    
}
