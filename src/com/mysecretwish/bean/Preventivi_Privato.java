package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "PreventiviPrivato")
@ViewScoped
public class Preventivi_Privato extends Pagina {

	public Preventivi_Privato () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {         		
		return "Preventivi_Privato_Dett.xhtml";
	}
	
	public String buttonSalvaPrenota() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Preventivi_Privato.xhtml";
	}
	
	
}
