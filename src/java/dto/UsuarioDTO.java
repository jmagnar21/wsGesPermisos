/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Ignacio
 */
public class UsuarioDTO {
    private int rut;
    private String apPaterno;
    private String apMaterno;
    private String nombre;
    private String telParticular;
    private String telInstitucional;
    private String dirParticular;
    private int unidadInterna;
    private String email;
    private int cargo;
    /*
     (rut_usuario_sp tbl_usuario.rut_usuario%TYPE, 
     * ap_paterno_sp tbl_usuario.ap_paterno%TYPE, 
     * ap_materno_sp tbl_usuario.ap_materno%TYPE, 
     * nombre_sp tbl_usuario.nombre%TYPE,
  * tel_particular_sp tbl_usuario.tel_particular%TYPE, 
  * tel_institu_sp tbl_usuario.tel_institucional%TYPE, 
  * dir_particu_sp tbl_usuario.dir_particular%TYPE, 
  * id_unid_sp tbl_usuario.id_unidad_interna%TYPE,
  email_sp tbl_usuario.email%TYPE, 
  * cargo_sp tbl_usuario.cargo%TYPE)
     */

    public UsuarioDTO(int rut, String apPaterno, String apMaterno, String nombre, String telParticular, String telInstitucional, String dirParticular, int unidadInterna, String email, int cargo) {
        this.rut = rut;
        this.apPaterno = apPaterno;
        this.apMaterno = apMaterno;
        this.nombre = nombre;
        this.telParticular = telParticular;
        this.telInstitucional = telInstitucional;
        this.dirParticular = dirParticular;
        this.unidadInterna = unidadInterna;
        this.email = email;
        this.cargo = cargo;
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    public String getApPaterno() {
        return apPaterno;
    }

    public void setApPaterno(String apPaterno) {
        this.apPaterno = apPaterno;
    }

    public String getApMaterno() {
        return apMaterno;
    }

    public void setApMaterno(String apMaterno) {
        this.apMaterno = apMaterno;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelParticular() {
        return telParticular;
    }

    public void setTelParticular(String telParticular) {
        this.telParticular = telParticular;
    }

    public String getTelInstitucional() {
        return telInstitucional;
    }

    public void setTelInstitucional(String telInstitucional) {
        this.telInstitucional = telInstitucional;
    }

    public String getDirParticular() {
        return dirParticular;
    }

    public void setDirParticular(String dirParticular) {
        this.dirParticular = dirParticular;
    }

    public int getUnidadInterna() {
        return unidadInterna;
    }

    public void setUnidadInterna(int unidadInterna) {
        this.unidadInterna = unidadInterna;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCargo() {
        return cargo;
    }

    public void setCargo(int cargo) {
        this.cargo = cargo;
    }
    
    
    
}
