package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "PreventiviBusiness")
@ViewScoped
public class Preventivi_Business extends Pagina {

	public Preventivi_Business () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {        		
		return "Preventivi_Business_Dett.xhtml";
	}
	
	public void buttonSalvaAccetta() {
		System.out.println("buttonSalvaAccetta");
	}
	
	public void buttonAnnullaAccetta() {
		System.out.println("buttonAnnullaAccetta"); 
	}
	
	public void buttonSalvaRifiuta() {
		System.out.println("buttonSalvaRifiuta");
	}
	
	public void buttonAnnullaRifiuta() {
		System.out.println("buttonSalvaRifiuta");
	}
	
}
