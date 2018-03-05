package com.mysecretwish.bean;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

@ManagedBean(name = "Struttura")
@ViewScoped
public class Struttura extends Pagina{

	public Struttura () {
		
	}
	
	@PostConstruct
    public void init() {
		System.out.println("");
	}
	
	public String buttonNuovo() {
		return "Struttura_Dett.xhtml";
	}
	
	public String buttonAction(Object selected) {        		
		return "Struttura_Dett.xhtml";
	}
	
	public String buttonSalva() {
		return null;
	}
	
	public String buttonAnnulla() {
		return "Struttura.xhtml";
	}
	
	public String buttonElimina() {  
		return "Struttura.xhtml";
	}
	
}
