package br.com.a_logica.filter;

import java.io.Serializable;

/**
 * @author Adalberto H. Kamida
 * dt. criação: 14/07/2018
 */
public class FilialFilter implements Serializable {

    private static final long serialVersionUID = 1L; 
    
    private String dc_filial; 

    public String getDc_filial() {
        return dc_filial;
    }

    public void setDc_filial(String dc_filial) {
        this.dc_filial = dc_filial;
    }
    
    
}
