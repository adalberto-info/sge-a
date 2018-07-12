package br.com.a_logica.util;

import javax.faces.context.FacesContext;
import org.hibernate.Session;

/**
 * @author Adalberto
 * dt. criação: 11/07/2018
 */
public class FacesContextUtil {
    private static final String HIBERNATE_SESSION = "hibernate_session";

    public static Session getRequestSession() {
        return (Session)FacesContext.getCurrentInstance().getExternalContext().getRequestMap().get(HIBERNATE_SESSION);
    }

    public static void setRequestSession(Session session) {
        FacesContext.getCurrentInstance().getExternalContext().getRequestMap().put(HIBERNATE_SESSION, session);
    }

}