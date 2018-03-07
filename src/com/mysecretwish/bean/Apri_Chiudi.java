package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "ApriChiudi")
@ViewScoped
public class Apri_Chiudi extends Pagina {
	
	public Apri_Chiudi() {
		
	}
	
	@PostConstruct
    public void init() {
		
	}
	
	public String buttonNuovo() {
		return "Apri_Chiudi_Dett.xhtml";
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {        		
		return "Apri_Chiudi_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() { 
		return "Apri_Chiudi.xhtml";
	}
	
	public String buttonElimina() {  
		return "Apri_Chiudi.xhtml";
	}
	
}
