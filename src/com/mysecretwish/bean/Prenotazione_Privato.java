package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "PrenotazionePrivato")
@ViewScoped
public class Prenotazione_Privato extends Pagina {

	public Prenotazione_Privato () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println(""); 
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {        		
		return "Prenotazione_Privato_Dett.xhtml";
	}
	
}
