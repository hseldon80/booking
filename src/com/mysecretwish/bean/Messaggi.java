package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "Messaggi")
@ViewScoped
public class Messaggi extends Pagina {

	public Messaggi () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
		
	
	public String buttonSalvaPersonale() {
		return null;
	}
	
	public String buttonAnnullaPersonale() {      
		return null;
	}
	
	
	public String buttonNuovo() {
		return "Preferenze_Messaggi_Dett.xhtml";
	}
	
	public String buttonAction(Object selected) {            		
		return "Preferenze_Messaggi_Dett.xhtml";
	}
	
	public String buttonSalvaPreferenza() {
		return null;
	}
	
	public String buttonAnnullaPreferenza() {         
		return "Preferenze_Messaggi.xhtml";
	}
	
	public String buttonEliminaPreferenza() {     
		return "Preferenze_Messaggi.xhtml";
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonEliminaNotifica(Object selected) {            		
		return null;
	}
}
