package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "GiudiziPrivato")
@ViewScoped 
public class Giudizi_Privato extends Pagina {
	
	
	
	public Giudizi_Privato() { 
		
	}
	
	@PostConstruct
    public void init() {
		
	}
	
	public void buttonRicerca(ActionEvent actionEvent) {   
		System.out.println("Ricerca");
	}		
	
	public String buttonAction(Object selected) {        		
		return "Giudizio_Privato_Dett.xhtml";
	}
	
	public String buttonAnnulla() {
		return "Giudizio_Privato.xhtml";
	}

	public String buttonSalvaGiudizio() { 
		return null;
	}
	
	public String buttonSalvaEsperienza() { 
		return null;
	}
	
	
}
