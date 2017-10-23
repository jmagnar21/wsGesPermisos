/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;
import java.util.*;
import sql.OraConnection;
import views.ResumenCantidadTipoPermiso;

/**
 *
 * @author Ignacio
 */
public class VwResumenCantidadTipoPermisoDAO {
    
    public static ArrayList<ResumenCantidadTipoPermiso> getResumenCantidadTipoPermiso(){
        ArrayList<ResumenCantidadTipoPermiso> lst = new ArrayList<ResumenCantidadTipoPermiso>();
        try{
        Connection conexion = OraConnection.getConnection();
        String query = "SELECT * FROM VW_RESUMEN_CANT_TIPOPERMISO";
        PreparedStatement listar = conexion.prepareStatement(query);
        ResultSet rs = listar.executeQuery();
        while (rs.next()) {
            ResumenCantidadTipoPermiso dto = new ResumenCantidadTipoPermiso();
            dto.setUnidadInterna(rs.getString("DESC_UNIDAD_INTERNA"));
            dto.setRecursoLegal(rs.getString("RECURSO_LEGAL"));
            dto.setDescEstado(rs.getString("DESC_ESTADO"));
            dto.setCantidadPermisos(rs.getInt("CANTIDAD_PERMISOS"));
//            dto.setPeriodoSolicitud(rs.getInt("PERIODOSOLICITUD"));
//            dto.setRecursoLegal(rs.getString("RECURSO_LEGAL"));
//            dto.setDescripcionEstado(rs.getString("DESC_ESTADO"));
//            dto.setCantidadPermisos(rs.getInt("CANTIDAD_PERMISOS"));
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
