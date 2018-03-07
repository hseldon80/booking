package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "PrenotazioneBusiness")
@ViewScoped
public class Prenotazione_Business extends Pagina {

	public Prenotazione_Business () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println(""); 
	}
	
	public String buttonNuovo() {        		
		return "Prenotazione_Dett.xhtml";
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {        		
		return "Prenotazione_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Prenotazione.xhtml";
	}
	
	public String buttonElimina() {  
		return "Prenotazione.xhtml";
	}
	
}
