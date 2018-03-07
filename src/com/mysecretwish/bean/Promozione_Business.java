package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "PromozioneBusiness")
@ViewScoped
public class Promozione_Business extends Pagina {

	public Promozione_Business () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println(""); 
	}
	
	public String buttonNuovo() {        		
		return "Promozioni_Business_Dett.xhtml";
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}	
	
	public void buttonRicercaDisattive(ActionEvent actionEvent) { 
		System.out.println("Ricerca Disattive");
	}
	
	public String buttonAction(Object selected) {        		
		return "Promozioni_Business_Dett.xhtml";
	}
	
	public String buttonActionDisattive(Object selected) {        		
		return "Promozioni_Disattive_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Promozioni_Business.xhtml"; 
	}
		
	public String buttonAnnullaDisattive() { 
		return "Promozioni_Disattive.xhtml";
	}
	
	public String buttonElimina() {  
		return "Promozioni_Business.xhtml";
	}
	
}
