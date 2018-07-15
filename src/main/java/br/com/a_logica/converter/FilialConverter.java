package br.com.a_logica.converter;

/**
 * @author Adalberto
 * dt. criação: 14/07/2018
 */

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import br.com.a_logica.model.entities.Filial;

@FacesConverter(forClass = Filial.class)
public class FilialConverter implements Converter {
    
    @Override
    public Object getAsObject(FacesContext facesContext, UIComponent uiComponent, String value){
        if (value != null && !value.isEmpty()){
            return (Filial) uiComponent.getAttributes().get(value);
        }
        
        return null;
    }

    @Override
    public String getAsString(FacesContext facescontext, UIComponent uiComponent, Object value) {
        if (value instanceof Filial) {
            Filial entity = (Filial) value; 
            if (entity != null && entity instanceof Filial && entity.getNr_codigo() != null){
                uiComponent.getAttributes().put(entity.getNr_codigo().toString(), entity); 
                return entity.getNr_codigo().toString();
            }
        }
        return "";
    }
    
}
