/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.*;
import views.SolicitudPermiso;
import sql.OraConnection;
import java.sql.*;
import oracle.jdbc.OracleTypes;


public class SolicitudPermisoDAO {
    
    public static ArrayList<SolicitudPermiso> getSolicitudPermiso(){
        ArrayList<SolicitudPermiso> lst = new ArrayList<SolicitudPermiso>();
        try{
        Connection conexion = OraConnection.getConnection();
        String query = "SELECT * FROM VW_SOLICITUD_PERMISO ORDER BY RUT_USUARIO";
        PreparedStatement listar = conexion.prepareStatement(query);
        ResultSet rs = listar.executeQuery();
        while (rs.next()) {
            SolicitudPermiso dto = new SolicitudPermiso();
            dto.setRut(rs.getInt("RUT_USUARIO"));
            dto.setfInicio(rs.getDate("FECHA_INICIO"));
            dto.setfFinSolicitud(rs.getDate("FECHA_FIN_SOL"));
            dto.setCantidadDias(rs.getInt("CANTIDAD_DIAS"));
            dto.setDescEstado(rs.getString("DESC_ESTADO"));
            lst.add(dto);
        }
        
        }catch(SQLException s){
            System.out.println("Error SQL al listar: "+s.getMessage());
        }catch(Exception e){
            System.out.println("Error al listar:"+e.getMessage());
        }
        return lst;
        
    }
    
    public static ArrayList<SolicitudPermiso> getSolicitudPermisoByRut(int rut){
        ArrayList<SolicitudPermiso> lst = new ArrayList<SolicitudPermiso>();
        try{
        Connection conexion = OraConnection.getConnection();
        String query = "SELECT * FROM VW_SOLICITUD_PERMISO WHERE RUT_USUARIO=? ORDER BY RUT_USUARIO";
        PreparedStatement listar = conexion.prepareStatement(query);
        listar.setInt(1, rut);
        ResultSet rs = listar.executeQuery();
        while (rs.next()) {
            SolicitudPermiso dto = new SolicitudPermiso();
            dto.setRut(rs.getInt("RUT_USUARIO"));
            dto.setIdPermiso(rs.getInt("ID_SOLICITUD"));
            dto.setfInicio(rs.getDate("FECHA_INICIO"));
            dto.setfFinSolicitud(rs.getDate("FECHA_FIN_SOL"));
            dto.setCantidadDias(rs.getInt("CANTIDAD_DIAS"));
            dto.setDescEstado(rs.getString("DESC_ESTADO"));
            lst.add(dto);
        }
        
        }catch(SQLException s){
            System.out.println("Error SQL al listar: "+s.getMessage());
        }catch(Exception e){
            System.out.println("Error al listar:"+e.getMessage());
        }
        return lst;
        
    }
    
    public static ArrayList<SolicitudPermiso> getSolicitudPermisoByPermiso(int permiso){
        ArrayList<SolicitudPermiso> lst = new ArrayList<SolicitudPermiso>();
        try{
        Connection conexion = OraConnection.getConnection();
        String query = "SELECT * FROM VW_SOLICITUD_PERMISO WHERE ID_SOLICITUD=? ORDER BY RUT_USUARIO";
        PreparedStatement listar = conexion.prepareStatement(query);
        listar.setInt(1, permiso);
        ResultSet rs = listar.executeQuery();
        while (rs.next()) {
            SolicitudPermiso dto = new SolicitudPermiso();
            dto.setRut(rs.getInt("RUT_USUARIO"));
            dto.setfInicio(rs.getDate("FECHA_INICIO"));
            dto.setfFinSolicitud(rs.getDate("FECHA_FIN_SOL"));
            dto.setCantidadDias(rs.getInt("CANTIDAD_DIAS"));
            dto.setDescEstado(rs.getString("DESC_ESTADO"));
            lst.add(dto);
        }
        
        }catch(SQLException s){
            System.out.println("Error SQL al listar: "+s.getMessage());
        }catch(Exception e){
            System.out.println("Error al listar:"+e.getMessage());
        }
        return lst;
        
    }
    
    public static boolean getTieneDiasDisponibles(int rut, int motivo, String fechaInicio, String fechaTermino){
        long tieneDias=0;
        Boolean retorno = null;
        try{
        
        Connection conexion = OraConnection.getConnection();
        String query = "{ ? = call PKG_MANTENEDOR_SOLICITUD.fn_comprobar_diasdisp(?,?,?,?) }";
        CallableStatement instruccion = conexion.prepareCall(query);
        instruccion.setInt(2,rut);
        instruccion.setInt(3, motivo);
        instruccion.setString(4, fechaInicio);
        instruccion.setString(5,fechaTermino);
        System.out.println(String.valueOf(fechaInicio));
        System.out.println(query);
        instruccion.registerOutParameter(1, java.sql.Types.INTEGER);
        instruccion.execute();
        tieneDias = instruccion.getLong(1);
        instruccion.close();
        conexion.close();
            if (tieneDias>0) {
                retorno=true;
            }else{
                retorno=false;
            }
        
        }catch(SQLException s){
            System.out.println("Error SQL al validar: "+s.getMessage());
        }catch(NullPointerException e){
            System.out.println("Error al validar:"+e.getMessage());
        }
        return retorno;
    }
}
