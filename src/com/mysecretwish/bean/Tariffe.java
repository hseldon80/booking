package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "Tariffe")
@ViewScoped
public class Tariffe extends Pagina {
	
	public Tariffe() {
		
	}
	
	@PostConstruct
    public void init() {
		
	}
	
	public String buttonNuovo() {
		return "Tariffa_Dett.xhtml";
	}
	
	public void buttonRicerca(ActionEvent actionEvent) { 
		System.out.println("Ricerca");
	}
	
	public String buttonAction(Object selected) {        		
		return "Tariffa_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Tariffe.xhtml";
	}
	
	public String buttonElimina() {  
		return "Tariffe.xhtml";
	}
	
}
