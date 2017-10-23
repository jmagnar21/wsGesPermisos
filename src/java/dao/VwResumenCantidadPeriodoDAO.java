/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.*;
import java.util.*;
import sql.OraConnection;
import views.ResumenCantidadPerPeriodo;
/**
 *
 * @author Ignacio
 */
public class VwResumenCantidadPeriodoDAO {
    
    public static ArrayList<ResumenCantidadPerPeriodo> getResumenCantidadPerPeriodo(){
         ArrayList<ResumenCantidadPerPeriodo> lst = new ArrayList<ResumenCantidadPerPeriodo>();
        try{
        Connection conexion = OraConnection.getConnection();
        String query = "SELECT * FROM VW_RESUMEN_CANT_PERIODO ORDER BY PERIODOSOLICITUD";
        PreparedStatement listar = conexion.prepareStatement(query);
        ResultSet rs = listar.executeQuery();
        while (rs.next()) {
            ResumenCantidadPerPeriodo dto = new ResumenCantidadPerPeriodo();
            dto.setPeriodoSolicitud(rs.getInt("PERIODOSOLICITUD"));
            dto.setRecursoLegal(rs.getString("RECURSO_LEGAL"));
            dto.setDescripcionEstado(rs.getString("DESC_ESTADO"));
            dto.setCantidadPermisos(rs.getInt("CANTIDAD_PERMISOS"));
            lst.add(dto);
        }
        
        }catch(SQLException s){
            System.out.println("Error SQL al listar: "+s.getMessage());
        }catch(Exception e){
            System.out.println("Error al listar:"+e.getMessage());
        }
        return lst;
    }
    
    public static ArrayList<ResumenCantidadPerPeriodo> getResumenCantidadPerPeriodoByPeriodo(int periodo){
         ArrayList<ResumenCantidadPerPeriodo> lst = new ArrayList<ResumenCantidadPerPeriodo>();
        try{
        Connection conexion = OraConnection.getConnection();
        String query = "SELECT * FROM VW_RESUMEN_CANT_PERIODO WHERE PERIODOSOLICITUD=? ORDER BY PERIODOSOLICITUD";
        PreparedStatement listar = conexion.prepareStatement(query);
        listar.setInt(1, periodo);
        ResultSet rs = listar.executeQuery();
        while (rs.next()) {
            ResumenCantidadPerPeriodo dto = new ResumenCantidadPerPeriodo();
            dto.setPeriodoSolicitud(rs.getInt("PERIODOSOLICITUD"));
            dto.setRecursoLegal(rs.getString("RECURSO_LEGAL"));
            dto.setDescripcionEstado(rs.getString("DESC_ESTADO"));
            dto.setCantidadPermisos(rs.getInt("CANTIDAD_PERMISOS"));
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
