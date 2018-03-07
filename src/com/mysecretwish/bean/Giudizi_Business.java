package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "GiudiziBusiness")
@ViewScoped
public class Giudizi_Business extends Pagina {
	
	private Object selected;
	
	public Giudizi_Business() { 
		
	}
	
	@PostConstruct
    public void init() {
		
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}		
	
	public void buttonRicercaEsperienza(ActionEvent actionEvent) { 
		System.out.println("Ricerca Esperienza");
	}	

	public Object getSelected() { 
		return selected;
	}

	public void setSelected(Object selected) {    
		this.selected = selected;
	}
	
	
	
}
