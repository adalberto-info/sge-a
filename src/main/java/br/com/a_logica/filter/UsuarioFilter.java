package br.com.a_logica.filter;

/**
 * @author Adalberto H. Kamida
 * dt. criação: 14/07/2018
 */

import java.io.Serializable;

public class UsuarioFilter implements Serializable{
    
    private static final long serialVersionUID = 1L; 
    
    private String dc_login; 

    public String getDc_login() {
        return dc_login;
    }

    public void setDc_login(String dc_login) {
        this.dc_login = dc_login;
    }
}
