package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "Restrizioni")
@ViewScoped
public class Restrizioni extends Pagina {
	
	public Restrizioni() {
		
	}
	
	@PostConstruct
    public void init() {
		
	}
	
	public String buttonNuovo() {
		return "Restrizioni_Dett.xhtml";
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {        		
		return "Restrizioni_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Restrizioni.xhtml";
	}
	
	public String buttonElimina() {  
		return "Restrizioni.xhtml";
	}
	
}
