/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package cl.encuentraloFacil.aplicacion.TO;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Mario
 */
public class EmpresaTO implements Serializable{
    private int idEmpresa;
    private int rutEmp;
    private String dv;
    private String nombreEmpresa;
    private String imagen;
    private Date fechaValidacion;
    private Date fechaActivacion;
    private String url;

    /**
     * @return the idEmpresa
     */
    public int getIdEmpresa() {
        return idEmpresa;
    }

    /**
     * @param idEmpresa the idEmpresa to set
     */
    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    /**
     * @return the rutEmp
     */
    public int getRutEmp() {
        return rutEmp;
    }

    /**
     * @param rutEmp the rutEmp to set
     */
    public void setRutEmp(int rutEmp) {
        this.rutEmp = rutEmp;
    }

    /**
     * @return the dv
     */
    public String getDv() {
        return dv;
    }

    /**
     * @param dv the dv to set
     */
    public void setDv(String dv) {
        this.dv = dv;
    }

    /**
     * @return the nombreEmpresa
     */
    public String getNombreEmpresa() {
        return nombreEmpresa;
    }

    /**
     * @param nombreEmpresa the nombreEmpresa to set
     */
    public void setNombreEmpresa(String nombreEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
    }

    /**
     * @return the imagen
     */
    public String getImagen() {
        return imagen;
    }

    /**
     * @param imagen the imagen to set
     */
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    /**
     * @return the fechaValidacion
     */
    public Date getFechaValidacion() {
        return fechaValidacion;
    }

    /**
     * @param fechaValidacion the fechaValidacion to set
     */
    public void setFechaValidacion(Date fechaValidacion) {
        this.fechaValidacion = fechaValidacion;
    }

    /**
     * @return the fechaActivacion
     */
    public Date getFechaActivacion() {
        return fechaActivacion;
    }

    /**
     * @param fechaActivacion the fechaActivacion to set
     */
    public void setFechaActivacion(Date fechaActivacion) {
        this.fechaActivacion = fechaActivacion;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }
}
