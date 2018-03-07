package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "MessaggiBusinessPrivato")
@ViewScoped
public class Messaggi_Business_Privato extends Pagina {

	public Messaggi_Business_Privato () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println(""); 
	}
	
	public String buttonNuovo() {        		
		return "Messaggio_Dett.xhtml";
	}
	
	public void buttonRicerca(ActionEvent actionEvent) {    
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {        		
		return "Messaggio_Dett.xhtml";
	}
	
	public String buttonSalva() {  
		return null;
	}
	
	public String buttonAnnulla() {
		return "Messaggi.xhtml";
	}
	
	public String buttonElimina() {  
		return "Messaggi.xhtml";
	}
	
}
