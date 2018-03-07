package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "Delega")
@ViewScoped
public class Delega extends Pagina {
	
	public Delega() {
		
	}
	
	@PostConstruct
    public void init() {
		
	}
	
	public String buttonNuovo() {
		return "Delega_Dett.xhtml";
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {        		
		return "Delega_Dett.xhtml";
	}
	
	public String buttonSalva() { 
		return null;
	}
	
	public String buttonAnnulla() {
		return "Delega.xhtml";
	}
	
	public String buttonElimina() {  
		return "Delega.xhtml";
	}	
	
	public String buttonSalvaStruttura() {
		return null;
	}
	
	public String buttonEliminaStruttura(Object selected) {        		
		return null;
	}
	
}
